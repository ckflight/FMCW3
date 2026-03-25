#ifndef SPI_H
#define SPI_H

#include "xspi.h"
#include "xil_types.h"

// SPI instance (extern so other files can use it)
extern XSpi SPI0;

// Initialize SPI peripheral
int SPI_Init(void);

// Write N bytes to SPI (generic)
int SPI_WriteBytes(u8 *data, int length);

// Convenience function: write 24-bit register (for ADF4158)
void SPI_WriteReg24(u32 regValue);

#endif // SPI_H
