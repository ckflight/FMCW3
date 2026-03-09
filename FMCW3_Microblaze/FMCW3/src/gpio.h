#ifndef GPIO_H
#define GPIO_H

#include "xgpio.h"
#include "xil_types.h"

// GPIO instance (extern so other files can use it)
extern XGpio Gpio;

// Initialize GPIO peripheral
int GPIO_Init(void);

// Set specific pins high or low using a 16-bit mask
void GPIO_WritePins(u16 mask, u16 value);

// Convenience functions for single pins
void GPIO_SetPin(u8 pin);   // set pin high
void GPIO_ClearPin(u8 pin); // set pin low

#endif // GPIO_H
