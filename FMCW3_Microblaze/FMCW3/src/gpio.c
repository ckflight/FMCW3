#include "gpio.h"
#include "xil_printf.h"

XGpio Gpio;

int GPIO_Init(void)
{
    int status;

    // Initialize GPIO (replace with your device ID)
    status = XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_0_BASEADDR);
    if (status != XST_SUCCESS) {
        xil_printf("GPIO Initialization failed\n\r");
        return XST_FAILURE;
    }

    // Set all pins as outputs (1 = output, 0 = input)
    XGpio_SetDataDirection(&Gpio, 1, 0x0000); // 16-bit, all outputs

    // Optional: clear all pins initially
    XGpio_DiscreteWrite(&Gpio, 1, 0x0000);

    return XST_SUCCESS;
}

// Write multiple pins using a mask
void GPIO_WritePins(u16 mask, u16 value)
{
    u16 current = XGpio_DiscreteRead(&Gpio, 1);
    current = (current & ~mask) | (value & mask);
    XGpio_DiscreteWrite(&Gpio, 1, current);
}

// Set a single pin high
void GPIO_SetPin(u8 pin)
{
    u16 mask = 1 << pin;
    GPIO_WritePins(mask, mask);
}

// Set a single pin low
void GPIO_ClearPin(u8 pin)
{
    u16 mask = 1 << pin;
    GPIO_WritePins(mask, 0x0);
}
