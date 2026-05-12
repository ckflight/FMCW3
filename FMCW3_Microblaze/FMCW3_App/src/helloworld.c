
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
#define CONFIG_PACKET_SIZE  25

XLlFifo Fifo;
XTmrCtr TimerInstance;

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

uint32_t read_timer_us()
{
    uint32_t ticks = XTmrCtr_GetValue(&TimerInstance, 0);

    return (ticks * 1000000ULL) / XPAR_AXI_TIMER_0_CLOCK_FREQUENCY;
}

uint16_t get_u16_be(uint8_t *buf, int index)
{
    return ((uint16_t)buf[index] << 8) | buf[index + 1];
}

typedef enum{
    IDLE,
    CHECK_TIME,
    FINISH_SAMPLING
}SAMPLING_STATES_e;

SAMPLING_STATES_e sampling_state = IDLE;

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

    uint8_t tx_mode;                 // [15]
    uint8_t gain;                    // [16]
    uint8_t sweep_type;              // [17]
    uint8_t data_log;                // [18]
    uint8_t adc_select;              // [19]
    uint8_t use_pll;                 // [20]
    uint8_t check_mode;              // [21]
    uint8_t usb_data_type;           // [22]
    uint8_t adc_resolution;          // [23]
    uint8_t sample_averaging;        // [24]

} config_parameters_t;

config_parameters_t config_parameters;

#define FREQ_PFD       40000000U

typedef enum {
    SAWTOOTH_WAVEFORM = 0,
    TRIANGULAR_WAVEFORM = 1
} WAVEFORM_TYPE;

void ADF4158_Init(WAVEFORM_TYPE wf, config_parameters_t* parameters);
void ADF4158_Configure_Sweep(WAVEFORM_TYPE wf, double startFreq, double bw, double rampTime, double rampDelay);
void ADF4158_DeviceEnable(void);
int ADF4158_WriteRegister(u32 data);

int main(void){

    int status = 0;
    
    init_platform();

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

    // Init SPI (already in spi.c)
    SPI_Init();

    
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

    // Fifo read exit indicator led blink   
    for (int i = 0; i < 30; i++) {
        uint32_t t0 = read_timer();

        GPIO_TogglePin(LED);
        // wait ~100ms (adjust depending on timer freq)
        while ((read_timer() - t0) < 2500000);
    }
    
    if (buffer[0] != '=' || buffer[1] != '=') {
        xil_printf("CONFIG HEADER ERROR\r\n");
        while (1);
    }

    config_parameters.sweep_time              = get_u16_be(buffer, 2);
    config_parameters.sweep_delay             = get_u16_be(buffer, 4);
    config_parameters.record_time             = (uint8_t)buffer[6];
    uint32_t time_counter = config_parameters.record_time * 1000000;

    config_parameters.sampling_frequency      = get_u16_be(buffer, 7);   // kHz
    config_parameters.number_of_samples       = get_u16_be(buffer, 9);
    config_parameters.sweep_start_frequency   = get_u16_be(buffer, 11);
    config_parameters.sweep_bandwidth         = get_u16_be(buffer, 13);

    config_parameters.tx_mode                 = (uint8_t)buffer[15];
    config_parameters.gain                    = (uint8_t)buffer[16];
    config_parameters.sweep_type              = (uint8_t)buffer[17];
    config_parameters.data_log                = (uint8_t)buffer[18];
    config_parameters.adc_select              = (uint8_t)buffer[19];
    config_parameters.use_pll                 = (uint8_t)buffer[20];
    config_parameters.check_mode              = (uint8_t)buffer[21];
    config_parameters.usb_data_type           = (uint8_t)buffer[22];
    config_parameters.adc_resolution          = (uint8_t)buffer[23];
    config_parameters.sample_averaging        = (uint8_t)buffer[24];


    // Init rf sythnesizer according to the received parameters
    ADF4158_Init(SAWTOOTH_WAVEFORM, &config_parameters); // spi is working in main.

    // TODO: Check signals going to adf4158 with while(1) spi transfer to see if fpga pins are ok

    GPIO_SetPin(RAMP_CONFIGURED);

    start_time = read_timer_us();
    
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

                current_time = read_timer_us() - start_time;

                if(current_time >= time_counter){

                    // record is done
                    sampling_state = FINISH_SAMPLING;
                }

                break;
                
            case FINISH_SAMPLING:

                // Decide what to do here. Reset hardware and return to idle for example
                GPIO_SetPin(SAMPLING_DONE);
                GPIO_SetPin(SOFTWARE_RESET); // Sampling done is not meaningful with this logic!

                uint32_t t0 = read_timer_us();

                GPIO_TogglePin(LED);
                // wait ~1000ms (adjust depending on timer freq)
                while ((read_timer_us() - t0) < 100000);
                
                break;
   
        }
        
    }

    cleanup_platform();
    return XST_SUCCESS;
}

void ADF4158_Init(WAVEFORM_TYPE wf, config_parameters_t* parameters){
	
    ADF4158_DeviceEnable();

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
    data |= (1u << 15);
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