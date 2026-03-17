#include "adf4158.h"
#include "gpio.h"
#include "spi.h"
#include "xil_printf.h"
#include <math.h>

// Default sweep params
static float sweep_period = 0.0f;

void ADF4158_Init(WAVEFORM_TYPE wf, config_parameters_t* parameters){
    
    ADF4158_DeviceEnable();
    
    float sweep_time = (float)parameters->sweep_time / 1000000.0f;
    float sweep_delay = (float)parameters->sweep_delay / 1000000.0f;

    uint32_t sw_start = parameters->sweep_start_frequency;
    double sweep_start_freq_ = sw_start * 1e7;

    uint32_t sw_bw = parameters->sweep_bandwidth;
    double sweep_bw_ = sw_bw * 1e6;

    int sweep_type = parameters->sweep_type;
    if(sweep_type == SAWTOOTH_WAVEFORM){
        wf = SAWTOOTH_WAVEFORM;
    }
    else{
        wf = TRIANGULAR_WAVEFORM;
    }
    
    ADF4158_Configure_Sweep(wf, sweep_start_freq_, sweep_bw_, sweep_time, sweep_delay);        
    
}

void ADF4158_Configure_Sweep(WAVEFORM_TYPE wf, double startFreq, double bw, double rampTime, double rampDelay){

	double fres = ((double)FREQ_PFD)/(1 << 25); // Resolution frequency = FREQ_PFD / 2^25;
	uint16_t devmax = 1 << 15;
	uint8_t clk2 = 1;

	// RFOut = [N + (FRAC / 2^25)] * FREQ_PFD
	uint16_t n = startFreq / FREQ_PFD;
	uint16_t frac_msb = ((startFreq / FREQ_PFD) - n) * (1 << 12);
	uint16_t frac_lsb = ((((startFreq / FREQ_PFD) - n) * (1 << 12)) - frac_msb) * (1 << 13);

	// Formulas:
	// Sweep Delay 	= (1/PFD) * ramp_delay_word * CLK1
	// timer 		= CLK1 / (PFD)
	// steps 		= ramp_time / timer
	// fdev 		= BW / steps // used to calculate formulas below
	// dev_offset 	= (int)ceil(log2(fdev/(fres*devmax)))
	// dev 			= fdev/(fres * (1 << dev_offset))
	// using highest ramp_delay_word = 4095 is best for freq hop resolution
	// because clk1 will be minimum, timer will be minimum and steps will be maximum
	// To have higher freq. hop resolution meaning high value of steps, less sweep delay is necessary
	// to achieve that faster usb transfer is needed.

	uint16_t ramp_delay_word = 4095; // max value can be used

	uint16_t clk1 = (rampDelay * FREQ_PFD) / ramp_delay_word; // clk1 12bit value this formula is used if bit 16 = '1'

	double timer = (double)clk1 / (double)FREQ_PFD;

	uint32_t steps = rampTime / timer; // 20 bit value

	uint32_t fdev = bw / steps;

	uint8_t dev_offset = (int)ceil(log2(fdev/(fres*devmax))); // 4 bit value

	uint16_t dev = fdev/(fres * (1 << dev_offset)); // 16 bit value

	uint32_t data = 0;

	// R7 Register
	// [18] RAMP DEL FL : '1' ENABLE
	// [17] RAMP DEL 	: '1' ENABLE
	// [16] DEL CLK SEL	: '1' PFD x CLK1
	// [15] DEL ENABLE 	: '1' ENABLE
	// [14:3] DEL 12Bit Word
	data = 0;
	data |= (1u << 18) | (1u << 17) | (1u << 16) | (1u << 15) | (ramp_delay_word << 3) | (7u << 0);
	ADF4158_WriteRegister(data);


	// R6 Register
	// [22:3] STEP WORD 				: steps
	// [2:0] R6 Register control bits 	: '110'
	data = 0;
	data |= (steps << 3) | (6u << 0);
	ADF4158_WriteRegister(data);

	// R5 Register
	// [22:19] DEVIATION OFFSET : dev_offset
	// [18:3] DEVIATION WORD: dev
	// [2:0] R5 Register control bits : '101'
	data = 0;
	data |= (dev_offset << 19) | (dev << 3) | (5u << 0);
	ADF4158_WriteRegister(data);

	// R4 Register
	// [30:26] MODULATOR MODE : DISABLE WHEN FRAC = 0 	: '01110' now frac. is used so 0
	// [24:23] NEG BLEED CURRENT 						: ON '11' , OFF '00' with MUX READ BACK
	// [22:21] READ BACK TO MUX 						: ENABLE '11' (Page 30 says 3 not 2)
	// [20:19] CLK DIV MODE 							: RAMP DIVIDER '11'
	// [18:7] 12 BIT CLK2 DIVER VALUE 					: 1
	// [2:0] R4 Register control bits 					: '100'
	data = 0;
	data |= (0u << 26) | (0u << 23) | (3u << 21) | (3u << 19) | (clk2 << 7) | (4u << 0);
	ADF4158_WriteRegister(data);

	// R3 Register
	// [11:10] RAMP MODE 					: Continuous Triangle '01', Continuout Sawtooth '00'
	// [2:0] R3 Register control bits 		: '011'
	// [6] Phase detector polarity of VCO 	: Positive '1'
	// [2:0] R3 Register control bits 		: '011'
	data = 0;
	if(wf == TRIANGULAR_WAVEFORM){
		data |= (1u << 10);
	}
	else if(wf == SAWTOOTH_WAVEFORM){
		data |= (0u << 10);
	}
	data |= (1u << 6) | (3u << 0);
	ADF4158_WriteRegister(data);

	// R2 Register
	// [28] CSR Enable to improve lock times and removes noise makes waveform perfect.
	// [27:24] CP CURRENT SETTING 		: Icpmax = 25.5 / Rset(5.49K) = 4.65 mA : 14 for Icp 4.69mA
	// [22] PRESCALAR 					: 8/9 '1' for above 3GHz operations
	// [21] DIVIDE BY 2 BIT 			: '0' default
	// [20] REFERENCE DOUBLER 			: '0' default
	// [19:15] R COUNTER 				: 1
	// [14:3] CLK1 DIVIDER 				: clk1
	// [2:0] R3 Register control bits 	: '010'
	data = 0;
	data |= (1u << 28) | (14u << 24) | (1u << 22) | (1u << 15) | (clk1 << 3) | (2u << 0);
	ADF4158_WriteRegister(data);

	// R1 Register
	// [27:15] 13 Bit LSB FRAC Value
	// [2:0] R1 Register control bits : '001'
	data = 0;
	data |= (frac_lsb << 15) | (1u << 0);
	ADF4158_WriteRegister(data);

	// R0 Register
	// [31] RAMP ON 					: '1' RAMP ENABLE
	// [30:27] READ BACK TO MUX 		: 15 (Generates pulse at MUXOUT pin with R4 READ BACK TO MUX)
	// [26:15] 12 BIT INT VALUE 		: n
	// [14:3] 13 Bit MSB FRAC Value
	// [2:0] R0 Register control bits 	: '000'
	data = 0;
	data |= (1u << 31) | (15u << 27) | (n << 15) | (frac_msb << 3) | (0u << 0);
	ADF4158_WriteRegister(data);

}

void ADF4158_DeviceEnable(void)
{
    GPIO_SetPin(ADF_CE_PIN); // this is set once to enable device it is not spi_cs
}

void ADF4158_WriteRegister(u32 data)
{
    u8 txBuf[4];
    txBuf[0] = (data >> 24) & 0xFF;
    txBuf[1] = (data >> 16) & 0xFF;
    txBuf[2] = (data >> 8)  & 0xFF;
    txBuf[3] = (data >> 0)  & 0xFF;

    // LE low
    GPIO_ClearPin(ADF_LE_PIN);

    // CE already high (enabled)
    XSpi_SetSlaveSelect(&SPI0, 0x01);   // select CS0
    XSpi_Transfer(&SPI0, txBuf, NULL, 4);
    XSpi_SetSlaveSelect(&SPI0, 0x00);   // deselect

    // LE high to latch
    GPIO_SetPin(ADF_LE_PIN);
}
