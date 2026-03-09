#include "adf4158.h"
#include "gpio.h"
#include "spi.h"
#include "xil_printf.h"
#include <math.h>

// Default sweep params
static float sweep_period = 0.0f;

int ADF4158_Init(WAVEFORM_TYPE wf)
{
    // Init SPI (already in spi.c)
    SPI_Init();

    // Init GPIO pins
    GPIO_Init();

    // Make sure CE low, LE high
    GPIO_ClearPin(ADF_CE_PIN);
    GPIO_SetPin(ADF_LE_PIN);

    xil_printf("ADF4158 Initialized\n\r");

    return 0;
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

void ADF4158_Configure_Sweep(WAVEFORM_TYPE wf, double startFreq, double bw, double rampTime, int rampDel)
{
    double fres = ((double)FREQ_PFD)/(1 << 25);
    unsigned int devmax = 1 << 15;
    unsigned int clk2 = 1;

    unsigned int n = startFreq / FREQ_PFD;
    unsigned int frac_msb = ((startFreq / FREQ_PFD) - n) * (1 << 12);
    unsigned int frac_lsb = ((((startFreq / FREQ_PFD) - n) * (1 << 12)) - frac_msb) * (1 << 13);

    unsigned int fdev = bw / (rampTime * 1000000);
    unsigned int steps = bw / fdev;
    double timer = rampTime / steps;
    unsigned int clk1 = (FREQ_PFD * timer);

    int dev_offset = (int)ceil(log2(fdev/(fres*devmax)));
    if(dev_offset < 0) dev_offset = 0;

    unsigned int dev = fdev/(fres * (1 << dev_offset));

    u32 data = 0;

    ADF4158_DeviceEnable(); // Enable ic once this is not spi cs ADF_LE is spi_cs

    // R7: Ramp delay
    if(rampDel > 0 && wf == SAWTOOTH_WAVEFORM) {
        data = (1u<<18)|(1u<<17)|(1u<<16)|(1u<<15)|(rampDel<<3)|(7u<<0);
        ADF4158_WriteRegister(data);
    }

    // R6: Step word
    data = (steps<<3)|(6u<<0);
    ADF4158_WriteRegister(data);

    // R5: Deviation
    data = (dev_offset<<19)|(dev<<3)|(5u<<0);
    ADF4158_WriteRegister(data);

    // R4
    data = (0u<<26)|(0u<<23)|(3u<<21)|(3u<<19)|(clk2<<7)|(4u<<0);
    ADF4158_WriteRegister(data);

    // R3
    data = ((wf==TRIANGULAR_WAVEFORM)?(1u<<10):(0u<<10))|(1u<<6)|(3u<<0);
    ADF4158_WriteRegister(data);

    // R2
    data = (1u<<28)|(14u<<24)|(1u<<22)|(1u<<15)|(clk1<<3)|(2u<<0);
    ADF4158_WriteRegister(data);

    // R1
    data = (frac_lsb<<15)|(1u<<0);
    ADF4158_WriteRegister(data);

    // R0
    data = (1u<<31)|(15u<<27)|(n<<15)|(frac_msb<<3)|(0u<<0);
    ADF4158_WriteRegister(data);

    xil_printf("ADF4158 sweep configured.\n\r");
}
