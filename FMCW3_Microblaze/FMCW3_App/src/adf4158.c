#include "adf4158.h"
#include "gpio.h"
#include "spi.h"
#include "xil_printf.h"

#include <stdint.h>
#include <math.h>

/*
    Vitis / MicroBlaze ADF4158 driver

    Same calculation logic as STM32 CK_ADF4158 code.
    Vitis-specific parts:
        - GPIO_SetPin / GPIO_ClearPin
        - XSpi_Transfer
        - XSpi_SetSlaveSelect
*/

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
    ADF4158_WriteRegister(data);

    /*
        R6 Register
        [22:3] STEP WORD
        [2:0]  Register address = 6
    */
    data = 0;
    data |= ((uint32_t)steps << 3);
    data |= 6u;
    ADF4158_WriteRegister(data);

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
    ADF4158_WriteRegister(data);

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
    ADF4158_WriteRegister(data);

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
    ADF4158_WriteRegister(data);

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
    ADF4158_WriteRegister(data);

    /*
        R1 Register
        [27:15] 13-bit FRAC LSB
        [2:0]   Register address = 1
    */
    data = 0;
    data |= ((uint32_t)frac_lsb << 15);
    data |= 1u;
    ADF4158_WriteRegister(data);

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
    ADF4158_WriteRegister(data);
}

void ADF4158_DeviceEnable(void)
{
    GPIO_SetPin(ADF_CE_PIN);
}

void ADF4158_WriteRegister(uint32_t data)
{
    u8 txBuf[4];

    txBuf[0] = (data >> 24) & 0xFF;
    txBuf[1] = (data >> 16) & 0xFF;
    txBuf[2] = (data >> 8)  & 0xFF;
    txBuf[3] = data & 0xFF;

    GPIO_ClearPin(ADF_LE_PIN);

    SPI_WriteBytes(txBuf, 4);

    GPIO_SetPin(ADF_LE_PIN);
}