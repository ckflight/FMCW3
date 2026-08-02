
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
#include "xil_types.h"

#include "gpio.h"
//#include "adf4158.h"
#include "spi.h"

#define FIFO_BASEADDR       XPAR_XLLFIFO_0_BASEADDR
#define CONFIG_PACKET_SIZE  24

XLlFifo Fifo;
XTmrCtr TimerInstance;

int initFifo(void){

    xil_printf("FIFO RX test start\r\n");

    XLlFifo_Initialize(&Fifo, FIFO_BASEADDR);
    XLlFifo_IntClear(&Fifo, 0xFFFFFFFF);

    return XST_SUCCESS;
}

int initTimer(void)
{
    if (XTmrCtr_Initialize(&TimerInstance, XPAR_AXI_TIMER_0_BASEADDR) != XST_SUCCESS) {
        xil_printf("Timer init failed\r\n");
        return XST_FAILURE;
    }

    XTmrCtr_Reset(&TimerInstance, 0);
    XTmrCtr_Reset(&TimerInstance, 1);

    XTmrCtr_SetOptions(&TimerInstance, 0, XTC_CASCADE_MODE_OPTION);

    XTmrCtr_Start(&TimerInstance, 0);

    return XST_SUCCESS;
}

#define TIMER_FREQ_HZ  XPAR_AXI_TIMER_0_CLOCK_FREQUENCY
#define TICKS_PER_SEC  TIMER_FREQ_HZ

uint64_t read_timer64_ticks(void)
{
    uint32_t high1;
    uint32_t low;
    uint32_t high2;

    do {
        high1 = XTmrCtr_GetValue(&TimerInstance, 1);  // upper 32 bits
        low   = XTmrCtr_GetValue(&TimerInstance, 0);  // lower 32 bits
        high2 = XTmrCtr_GetValue(&TimerInstance, 1);  // upper again
    } while (high1 != high2);

    return ((uint64_t)high2 << 32) | low;
}

uint16_t get_u16_be(uint8_t *buf, int index)
{
    return ((uint16_t)buf[index] << 8) | buf[index + 1];
}

//********************************************

typedef struct config_parameters_s{

    // uint16 fields (from packet)
    uint16_t sweep_time;             // [2,3]
    uint16_t sweep_delay;            // [4,5]
    uint16_t sampling_frequency;     // [7,8]  (kHz)
    uint16_t number_of_samples;      // [9,10]
    uint16_t sweep_start_frequency;  // [11,12]
    uint16_t sweep_bandwidth;        // [13,14]

    // uint8 fields
    uint8_t record_time;             // [6]

    uint8_t test_mux;                // [15]
    uint8_t gain;                    // [16]
    uint8_t sweep_type;              // [17]
    uint8_t data_log;                // [18]
    uint8_t pa_mode;                 // [19]
    uint8_t fir_enable;              // [20]
    uint8_t send_data_type;          // [21]
    uint8_t adc_resolution;          // [22]
    uint8_t sample_averaging;        // [23]

} config_parameters_t;

config_parameters_t config_parameters;

#define FREQ_REF       40000000U
#define FREQ_PFD       FREQ_REF / 2   // intends 20 MHz

typedef enum {
    SAWTOOTH_WAVEFORM = 0,
    TRIANGULAR_WAVEFORM = 1
} WAVEFORM_TYPE;

void ADF4158_Init(WAVEFORM_TYPE wf, config_parameters_t* parameters);
void ADF4158_Configure_Sweep(WAVEFORM_TYPE wf, double startFreq, double bw, double rampTime, double rampDelay);
void ADF4158_DeviceEnable(void);
int ADF4158_WriteRegister(u32 data);

typedef enum{
    INIT_HARDWARE,
    INIT_CODE,
    LED_INDICATOR,
    READ_FIFO,
    CONFIGURE_ADF4158,
    CONFIGURATION_LED_INDICATOR,
    CHECK_TIME,
    FINISH_SAMPLING
}STATES_e;

STATES_e state = INIT_HARDWARE;

int status = 0;

uint32_t word;
uint8_t buffer[CONFIG_PACKET_SIZE];

uint64_t start_time = 0;
uint64_t current_time = 0;
uint64_t time_counter = 0;
uint64_t sample_led_time = 0;

int main(void){

    // IMPORTANT NOTE: Timer wraps around after 42 second so find a 64 bit solution to that if timer is used as counter to check time etc.
    
    // Once configuration done and ramp is configured control.vhd module starts its fsm for sampling 
    // in ramp and transferring data during gaps.(Initially, i will not record multi chirp x64 x128 etc.)
    // So this part should just count the end time for example if user demanded 10 second record,
    // This while loop should count 10 sec and then should send micrblaze done signal and soft reset.
    while (1) {

        switch(state){
            
            case INIT_HARDWARE:
            
                init_platform();
                
                // Init GPIO pins
                // 16 bit output gpio is used to set these pins
                // adf_ce                      <= s_gpio_rtl_0_tri_o(0); -- microblaze 16 bit gpio's bit 0 is controlling this. It will be written 1 to power device
                // adf_le                      <= s_gpio_rtl_0_tri_o(1); -- microblaze 16 bit gpio's bit 1 is spi_cs of adf4158
                // s_microblaze_done           <= s_gpio_rtl_0_tri_o(2); -- microblaze 16 bit gpio's bit 2 is microblaze's done signal to finish sampling
                // s_ramp_configured           <= s_gpio_rtl_0_tri_o(3); -- microblaze 16 bit gpio's bit 3 is ramp configured signal
                // s_soft_reset_n              <= s_gpio_rtl_0_tri_o(4); -- microblaze 16 bit gpio's bit 4 is software reset to reset everything instead of handshake singals between modules.
                // led                         <= s_gpio_rtl_0_tri_o(5); -- microblaze 16 bit gpio's bit 5 is led pin
                // s_fir_enable                <= s_gpio_rtl_0_tri_o(6); -- microblaze 16 bit gpio's bit 6 is fir enable signal
                // s_test_data_enable          <= s_gpio_rtl_0_tri_o(7); -- microblaze 16 bit gpio's bit 7 is fir enable signal
                
                GPIO_Init();

                // Init timer
                status = initTimer();

                // Init SPI (already in spi.c)
                SPI_Init();

                // Init fifo. VHDL sends python's configuration data to this fifo.
                // Microblaze reads this to configure ADF4158 over spi.
                status = initFifo();
                
                state = INIT_CODE;
                break;
                
            case INIT_CODE:
                                
                // Control.vhd module uses sampling done and ramp configured signals. They need 1 not a pulse.
                // Software reset is the resetting mechanism for the whole vhdl logic.
                GPIO_ClearPin(SAMPLING_DONE);   // sampling is not done yet
                GPIO_ClearPin(RAMP_CONFIGURED); // ramp not configured yet
                GPIO_SetPin(SOFTWARE_RESET);    // soft reset active low
                GPIO_ClearPin(LED); 
                GPIO_SetPin(FIR_ENABLE);        // default enabled
                GPIO_SetPin(SEND_DATA_TYPE);    // default adc data
                GPIO_SetPin(PA_MODE);           // default on off
                GPIO_ClearPin(TEST_MUX);        // default adf4158
                
                // These 2 gpios are directly connected to the fpga's io which is controlling ce and le pins of adf4158.
                // Make sure CE low, LE high
                // This resets the ramp as well
                GPIO_ClearPin(ADF_CE_PIN);
                GPIO_SetPin(ADF_LE_PIN);

                for(int i = 0; i < CONFIG_PACKET_SIZE; i++){
                    buffer[i] = 0;
                }

                state = LED_INDICATOR;
                break;

            case LED_INDICATOR:
            
                // Fifo read enter indicator led blink   
                for (int i = 0; i < 60; i++) {
                    uint64_t t0 = read_timer64_ticks();

                    GPIO_TogglePin(LED);

                    while ((read_timer64_ticks() - t0) < TICKS_PER_SEC/40);
                }
                GPIO_ClearPin(LED);


                state = READ_FIFO;    
                break;            

            case READ_FIFO:

                // READ FIFO
                // 128x32 bit data will be received but for the ease of use 8 bit of it is used as data
                // so last 8 bit is taken

                for (int i = 0; i < CONFIG_PACKET_SIZE; i++) {
                    while (XLlFifo_iRxOccupancy(&Fifo) == 0);
                    word = XLlFifo_RxGetWord(&Fifo);
                    buffer[i] = (uint8_t)(word & 0xFF);
                }
                
                if (buffer[0] != '=' || buffer[1] != '=') {
                    xil_printf("CONFIG HEADER ERROR\r\n");
                    while (1);
                }

                config_parameters.sweep_time              = get_u16_be(buffer, 2);
                config_parameters.sweep_delay             = get_u16_be(buffer, 4);
                config_parameters.record_time             = (uint8_t)buffer[6];
                time_counter = (uint64_t)config_parameters.record_time * TICKS_PER_SEC;
                
                config_parameters.sampling_frequency      = get_u16_be(buffer, 7);   // kHz
                config_parameters.number_of_samples       = get_u16_be(buffer, 9);
                config_parameters.sweep_start_frequency   = get_u16_be(buffer, 11);
                config_parameters.sweep_bandwidth         = get_u16_be(buffer, 13);

                config_parameters.test_mux                = (uint8_t)buffer[15];
                if(config_parameters.test_mux == 1){
                    GPIO_SetPin(TEST_MUX); // fpga generates mux to test the concept
                }
                else {
                    GPIO_ClearPin(TEST_MUX); // adf mux generation
                }


                config_parameters.gain                    = (uint8_t)buffer[16];
                config_parameters.sweep_type              = (uint8_t)buffer[17];
                config_parameters.data_log                = (uint8_t)buffer[18];
                config_parameters.pa_mode                 = (uint8_t)buffer[19];
                if(config_parameters.pa_mode == 1){
                    GPIO_SetPin(PA_MODE); // on off control
                }
                else {
                    GPIO_ClearPin(PA_MODE); // on during ramp
                }

                config_parameters.fir_enable              = (uint8_t)buffer[20];
                if(config_parameters.fir_enable == 1){
                    GPIO_SetPin(FIR_ENABLE); // enable fir

                }
                else {
                    GPIO_ClearPin(FIR_ENABLE); // no fir
                }
                
                config_parameters.send_data_type           = (uint8_t)buffer[21];
                if(config_parameters.send_data_type == 1){
                    GPIO_SetPin(SEND_DATA_TYPE); // send adc data

                }
                else{
                    GPIO_ClearPin(SEND_DATA_TYPE); // send test data 0 to number of sample per chirp 500 for 250 us ramp
                }
                
                config_parameters.adc_resolution          = (uint8_t)buffer[22];
                config_parameters.sample_averaging        = (uint8_t)buffer[23];

                state = CONFIGURE_ADF4158;                
                break;
                
            case CONFIGURE_ADF4158:
                            
                // Init rf sythnesizer according to the received parameters
                if(config_parameters.test_mux == 0){
                    ADF4158_Init(SAWTOOTH_WAVEFORM, &config_parameters); // spi is working in main.
                }
                
                state = CONFIGURATION_LED_INDICATOR;
                break;

            case CONFIGURATION_LED_INDICATOR:
            
                // Fifo read enter indicator led blink   
                for (int i = 0; i < 10; i++) {
                    uint64_t t0 = read_timer64_ticks();

                    GPIO_TogglePin(LED);
                   
                    while ((read_timer64_ticks() - t0) < TICKS_PER_SEC/10);
                }
                GPIO_ClearPin(LED);

                xil_printf("RAMP CONFIGURED SIGNAL IS SENT TO VHDL\r\n");
                GPIO_SetPin(RAMP_CONFIGURED);

                start_time = read_timer64_ticks();
                sample_led_time = start_time;        
                        
                state = CHECK_TIME;
                break;

            case CHECK_TIME:

                current_time = read_timer64_ticks() - start_time;

                // blink LED every 1 second
                if ((read_timer64_ticks() - sample_led_time) >= TICKS_PER_SEC/25) {

                    GPIO_TogglePin(LED);

                    sample_led_time = read_timer64_ticks();
                }

                if(current_time >= time_counter){

                    // record is done
                    state = FINISH_SAMPLING;
                }

                break;

            case FINISH_SAMPLING:

                xil_printf("FINISH SAMPLING, SOFTWARE RESET IS SET\r\n");

                // Decide what to do here. Reset hardware and return to idle for example
                GPIO_SetPin(SAMPLING_DONE);
                GPIO_ClearPin(SOFTWARE_RESET); // Sampling done is not meaningful with this logic!
                
                usleep(100);
                                
                state = INIT_CODE;
                break;
   
        }
        
    }

    cleanup_platform();
    return XST_SUCCESS;
}

void ADF4158_Init(WAVEFORM_TYPE wf, config_parameters_t* parameters){
	
    ADF4158_DeviceEnable();
    usleep(1000);


    float sweep_time  = (float)parameters->sweep_time  / 1000000.0f;
    float sweep_delay = (float)parameters->sweep_delay / 1000000.0f;

    uint32_t sw_start = parameters->sweep_start_frequency;
    double sweep_start_freq = (double)sw_start * 1e7;

    uint32_t sw_bw = parameters->sweep_bandwidth;
    double sweep_bw = (double)sw_bw * 1e6;

    if (parameters->sweep_type == 0) {
        wf = SAWTOOTH_WAVEFORM;
    } else {
        wf = TRIANGULAR_WAVEFORM;
    }

    ADF4158_Configure_Sweep(wf, sweep_start_freq, sweep_bw, sweep_time, sweep_delay);
	
}

void ADF4158_Configure_Sweep(WAVEFORM_TYPE wf, double startFreq, double bw, double rampTime, double rampDelay){
	
    double fres = ((double)FREQ_PFD) / (1u << 25);
    uint32_t devmax = 1u << 15;
    uint8_t clk2 = 1;

    /*
        RFout = [N + FRAC / 2^25] * FREQ_PFD
    */
    double n_frac = startFreq / (double)FREQ_PFD;

    uint16_t n = (uint16_t)n_frac;

    uint16_t frac_msb = (uint16_t)((n_frac - (double)n) * (1u << 12));

    uint16_t frac_lsb = (uint16_t)((((n_frac - (double)n) * (1u << 12)) - (double)frac_msb) * (1u << 13));

    /*
        Ramp delay and CLK1 calculation

        delay_counts = rampDelay * FREQ_PFD

        If delay_counts <= 4095:
            CLK1 = 1
            delay word = delay_counts

        Else:
            CLK1 selected so delay word stays inside 12-bit range.
    */
    uint32_t delay_counts = (uint32_t)round(rampDelay * (double)FREQ_PFD);

    if (delay_counts < 1) {
        delay_counts = 1;
    }

    uint16_t clk1 = 1;
    uint16_t ramp_delay_word = 1;

    if (delay_counts <= 4095) {
        clk1 = 1;
        ramp_delay_word = (uint16_t)delay_counts;
    } 
	else {
        clk1 = (uint16_t)((delay_counts + 4094u) / 4095u);

        if (clk1 < 1) {
            clk1 = 1;
        }
        if (clk1 > 4095) {
            clk1 = 4095;
        }

        ramp_delay_word = (uint16_t)(delay_counts / clk1);

        if (ramp_delay_word < 1) {
            ramp_delay_word = 1;
        }
        if (ramp_delay_word > 4095) {
            ramp_delay_word = 4095;
        }
    }

    double timer = (double)clk1 / (double)FREQ_PFD;

    uint32_t steps = (uint32_t)round(rampTime / timer);

    if (steps < 1) {
        steps = 1;
    }
    if (steps > 1048575u) {
        steps = 1048575u;
    }

    double fdev = bw / (double)steps;

    double ratio = fdev / (fres * (double)devmax);

    int dev_offset_i = 0;

    if (ratio > 1.0) {
        dev_offset_i = (int)ceil(log2(ratio));
    }

    if (dev_offset_i < 0) {
        dev_offset_i = 0;
    }
    if (dev_offset_i > 15) {
        dev_offset_i = 15;
    }

    uint8_t dev_offset = (uint8_t)dev_offset_i;

    uint32_t dev_i = (uint32_t)round(fdev / (fres * (double)(1u << dev_offset)));

    if (dev_i < 1) {
        dev_i = 1;
    }
    if (dev_i > 65535u) {
        dev_i = 65535u;
    }

    uint16_t dev = (uint16_t)dev_i;

    uint32_t data = 0;

    xil_printf("ADF4158 CONFIG\r\n");
    xil_printf("Start freq : %lu MHz x10\r\n", (uint32_t)(startFreq / 1e7));
    xil_printf("Bandwidth  : %lu MHz\r\n", (uint32_t)(bw / 1e6));
    xil_printf("Ramp time  : %lu us\r\n", (uint32_t)(rampTime * 1000000.0));
    xil_printf("Ramp delay : %lu us\r\n", (uint32_t)(rampDelay * 1000000.0));
    xil_printf("CLK1       : %u\r\n", clk1);
    xil_printf("Delay word : %u\r\n", ramp_delay_word);
    xil_printf("Steps      : %lu\r\n", steps);
    xil_printf("DEV offset : %u\r\n", dev_offset);
    xil_printf("DEV word   : %u\r\n", dev);

    /*
        R7 Register
        [18]    RAMP DEL FL
        [17]    RAMP DEL
        [16]    DEL CLK SEL
        [15]    DEL ENABLE
        [14:3]  DEL 12-bit word
        [2:0]   Register address = 7
    */
    data = 0;
    data |= (1u << 18);
    data |= (1u << 17);
    data |= (1u << 16);
    data |= (1u << 15);
    data |= ((uint32_t)ramp_delay_word << 3);
    data |= 7u;
    int stat = ADF4158_WriteRegister(data);


    /*
        R6 Register
        [22:3] STEP WORD
        [2:0]  Register address = 6
    */
    data = 0;
    data |= ((uint32_t)steps << 3);
    data |= 6u;
    stat = ADF4158_WriteRegister(data);

    /*
        R5 Register
        [22:19] DEVIATION OFFSET
        [18:3]  DEVIATION WORD
        [2:0]   Register address = 5
    */
    data = 0;
    data |= ((uint32_t)dev_offset << 19);
    data |= ((uint32_t)dev << 3);
    data |= 5u;
    stat = ADF4158_WriteRegister(data);

    /*
        R4 Register
        [30:26] MODULATOR MODE
        [24:23] NEG BLEED CURRENT
        [22:21] READ BACK TO MUX
        [20:19] CLK DIV MODE
        [18:7]  CLK2 divider
        [2:0]   Register address = 4
    */
    data = 0;
    data |= (0u << 26);
    data |= (0u << 23);
    data |= (3u << 21);
    data |= (3u << 19);
    data |= ((uint32_t)clk2 << 7);
    data |= 4u;
    stat = ADF4158_WriteRegister(data);

    /*
        R3 Register
        [11:10] Ramp mode
                00 = continuous sawtooth
                01 = continuous triangular
        [6]     Phase detector polarity
        [2:0]   Register address = 3
    */
    data = 0;

    if (wf == TRIANGULAR_WAVEFORM) {
        data |= (1u << 10);
    } else {
        data |= (0u << 10);
    }

    data |= (1u << 6);
    data |= 3u;
    stat = ADF4158_WriteRegister(data);

    /*
        R2 Register
        [28]    CSR enable
        [27:24] CP current
        [22]    Prescaler 8/9
        [19:15] R counter
        [14:3]  CLK1 divider
        [2:0]   Register address = 2
    */
    data = 0;
    data |= (1u << 28);
    data |= (14u << 24);
    data |= (1u << 22);
    data |= (2u << 15); // max pfd is 32mhz 40/2 = 20mhz. max ref in is 260mhz
    data |= ((uint32_t)clk1 << 3);
    data |= 2u;
    stat = ADF4158_WriteRegister(data);

    /*
        R1 Register
        [27:15] 13-bit FRAC LSB
        [2:0]   Register address = 1
    */
    data = 0;
    data |= ((uint32_t)frac_lsb << 15);
    data |= 1u;
    stat = ADF4158_WriteRegister(data);

    /*
        R0 Register
        [31]    Ramp on
        [30:27] Readback to MUX
        [26:15] INT value
        [14:3]  FRAC MSB
        [2:0]   Register address = 0
    */
    data = 0;
    data |= (1u << 31);
    data |= (15u << 27);
    data |= ((uint32_t)n << 15);
    data |= ((uint32_t)frac_msb << 3);
    data |= 0u;
    stat = ADF4158_WriteRegister(data);

    
}

void ADF4158_DeviceEnable(void)
{
    GPIO_SetPin(ADF_CE_PIN);
}

int ADF4158_WriteRegister(uint32_t data)
{
    u8 txBuf[4];
    int stat = 0;

    txBuf[0] = (data >> 24) & 0xFF;
    txBuf[1] = (data >> 16) & 0xFF;
    txBuf[2] = (data >> 8)  & 0xFF;
    txBuf[3] = data & 0xFF;

    GPIO_ClearPin(ADF_LE_PIN);

    XSpi_SetSlaveSelect(&SPI0, 0x01);
    stat = XSpi_Transfer(&SPI0, txBuf, NULL, 4);
    XSpi_SetSlaveSelect(&SPI0, 0x00);

    GPIO_SetPin(ADF_LE_PIN);
    usleep(1000);
    
    return stat;
}