
/*
    Microblaze resets SAMPLING_DONE and
    sends SOFTWARE_RESET for new radar operation
*/

#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "xllfifo.h"
#include "xparameters.h"
#include "xstatus.h"
#include "definitions.h"
#include "xtmrctr.h"

#include "gpio.h"
#include "adf4158.h"
#include "spi.h"

#define FIFO_BASEADDR       XPAR_XLLFIFO_0_BASEADDR
#define CONFIG_PACKET_SIZE  42

XLlFifo Fifo;
XTmrCtr TimerInstance;

config_parameters_t config_parameters;

uint32_t start_time = 0, current_time = 0;

int initFifo(void){

    xil_printf("FIFO RX test start\r\n");

    XLlFifo_Initialize(&Fifo, FIFO_BASEADDR);
    XLlFifo_IntClear(&Fifo, 0xFFFFFFFF);

    return XST_SUCCESS;
}

int initTimer(void){

   	// Initialize timer
    if (XTmrCtr_Initialize(&TimerInstance, XPAR_AXI_TIMER_0_BASEADDR) != XST_SUCCESS) {
        printf("Timer init failed\r\n");
        return XST_FAILURE;
    }

    // Reset both halves 
	XTmrCtr_Reset(&TimerInstance, 0);  // Reset Timer 0 (low 32 bits)

    // Start the timer (starting counter 0 will also increment the cascaded 1)
    XTmrCtr_Start(&TimerInstance, 0);

    return XST_SUCCESS;
}

uint32_t read_timer()
{
    return XTmrCtr_GetValue(&TimerInstance, 0);
}

typedef enum{
    IDLE,
    CHECK_TIME,
    FINISH_SAMPLING
}SAMPLING_STATES_e;

SAMPLING_STATES_e sampling_state = IDLE;

int main(void){

    int status = 0;
    
    init_platform();

    // Init SPI (already in spi.c)
    SPI_Init();

    // ***************************
    // Important NOTE: A delay counter with a start signal can be added to top module(EACH MODULE WILL WAIT THIS SIGNAL TO START) 
    // if gpio init time creates problem to vhdl logic,
    // if std_logic_vector = (others = '0') is not enough as idle value for sampling done and ramp configured.
    // ***************************
    
    // Init GPIO pins
    // 16 bit output gpio is used to set these pins
    // adf_ce                      <= s_gpio_rtl_0_tri_o(0); -- microblaze 16 bit gpio's bit 0 is controlling this. It will be written 1 to power device
    // adf_le                      <= s_gpio_rtl_0_tri_o(1); -- microblaze 16 bit gpio's bit 1 is spi_cs of adf4158
    // s_microblaze_done           <= s_gpio_rtl_0_tri_o(2); -- microblaze 16 bit gpio's bit 2 is microblaze's done signal to finish sampling
    // s_ramp_configured           <= s_gpio_rtl_0_tri_o(3); -- microblaze 16 bit gpio's bit 3 is ramp configured signal
    // s_soft_reset_n              <= s_gpio_rtl_0_tri_o(4); -- microblaze 16 bit gpio's bit 4 is software reset to reset everything instead of handshake singals between modules.
    GPIO_Init();
    
    // Control.vhd module uses sampling done and ramp configured signals. They need 1 not a pulse.
    // Software reset is the resetting mechanism for the whole vhdl logic.
    GPIO_ClearPin(SAMPLING_DONE);
    GPIO_ClearPin(RAMP_CONFIGURED);
    GPIO_SetPin(SOFTWARE_RESET);
    GPIO_ClearPin(LED);
    
    // These 2 gpios are directly connected to the fpga's io which is controlling ce and le pins of adf4158.
    // Make sure CE low, LE high
    GPIO_ClearPin(ADF_CE_PIN);
    GPIO_SetPin(ADF_LE_PIN);

    // Init timer
    status = initTimer();


    uint32_t word;
    uint8_t buffer[CONFIG_PACKET_SIZE];
    for(int i = 0; i < CONFIG_PACKET_SIZE; i++){
        buffer[i] = 0;
    }

    // Init fifo. VHDL sends python's configuration data to this fifo.
    // Microblaze reads this to configure ADF4158 over spi.
    status = initFifo();

    // IMPORTANT NOTE: Timer wraps around after 42 second so find a 64 bit solution to that if timer is used as counter to check time etc.

    // Fifo read enter indicator led blink   
    for (int i = 0; i < 30; i++) {
        uint32_t t0 = read_timer();

        GPIO_TogglePin(LED);
        // wait ~100ms (adjust depending on timer freq)
        while ((read_timer() - t0) < 2500000);
    }
    
    // READ FIFO
    // 128x32 bit data will be received but for the ease of use 8 bit of it is used as data
    // so last 8 bit is taken

    for (int i = 0; i < CONFIG_PACKET_SIZE; i++) {
        while (XLlFifo_iRxOccupancy(&Fifo) == 0);
        word = XLlFifo_RxGetWord(&Fifo);
        buffer[i] = (uint8_t)(word & 0xFF);
    }

    // print AFTER reception
    xil_printf("RX:\r\n");
    for (int i = 0; i < CONFIG_PACKET_SIZE; i++) {
        xil_printf("%c", buffer[i]);
    }
    xil_printf("\r\n");

    // Fifo read exit indicator led blink   
    for (int i = 0; i < 30; i++) {
        uint32_t t0 = read_timer();

        GPIO_TogglePin(LED);
        // wait ~100ms (adjust depending on timer freq)
        while ((read_timer() - t0) < 2500000);
    }
    
    while(1);
    
    // PARSE RECEIVED BYTES HERE: It will be added to a struct pointer
    config_parameters.check_mode = buffer[0]; // example
    config_parameters.sweep_start_frequency = buffer[1] << 8 | buffer[2]; // example

    // total radar operation time will be calculated with parameters here.
    config_parameters.record_time = buffer[10]; 
    uint32_t sweep_p_microsec = config_parameters.sweep_time + config_parameters.sweep_delay;

    // I might not need record counter since i will basically count for timer seconds
    uint32_t record_time_counter = (config_parameters.record_time * 1000.0f) / ((float)sweep_p_microsec / 1000.0f);


    // Init rf sythnesizer according to the received parameters
    ADF4158_Init(SAWTOOTH_WAVEFORM, &config_parameters);

    GPIO_SetPin(RAMP_CONFIGURED);

    start_time = read_timer();
    


    // Once configuration done and ramp is configured control.vhd module starts its fsm for sampling 
    // in ramp and transferring data during gaps.(Initially, i will not record multi chirp x64 x128 etc.)
    // So this part should just count the end time for example if user demanded 10 second record,
    // This while loop should count 10 sec and then should send micrblaze done signal and soft reset.
    while (1) {

        switch(sampling_state){
            case IDLE:
                
                sampling_state = CHECK_TIME;
                break;

            case CHECK_TIME:    

                current_time = read_timer() - start_time;

                if(current_time >= config_parameters.record_time * 1000000.0f){

                    // record is done
                    sampling_state = FINISH_SAMPLING;
                }

                break;
                
            case FINISH_SAMPLING:

                // Decide what to do here. Reset hardware and return to idle for example
                GPIO_SetPin(SAMPLING_DONE);
                GPIO_SetPin(SOFTWARE_RESET); // Sampling done is not meaningful with this logic!

                uint32_t t0 = read_timer();

                GPIO_TogglePin(LED);
                // wait ~1000ms (adjust depending on timer freq)
                while ((read_timer() - t0) < 100000000);
                
                break;
   
        }
        
    }

    cleanup_platform();
    return XST_SUCCESS;
}