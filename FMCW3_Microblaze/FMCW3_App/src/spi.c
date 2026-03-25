#include "spi.h"
#include "xil_printf.h"

XSpi SPI0;

int SPI_Init(void)
{
    int Status;
    XSpi_Config *SPIConfig;

    // Lookup SPI configuration (replace with your device ID or base address)
    SPIConfig = XSpi_LookupConfig(XPAR_AXI_QUAD_SPI_0_BASEADDR);
    if (SPIConfig == NULL) {
        xil_printf("SPI LookupConfig failed\n\r");
        return XST_FAILURE;
    }

    // Initialize SPI
    Status = XSpi_CfgInitialize(&SPI0, SPIConfig, SPIConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI Initialization failed\n\r");
        return XST_FAILURE;
    }

    Status = XSpi_Start(&SPI0);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI Start failed\n\r");
        return XST_FAILURE;
    }

    XSpi_IntrGlobalDisable(&SPI0); // polling mode
    return XST_SUCCESS;
}

// Generic SPI write
int SPI_WriteBytes(u8 *data, int length)
{
    if (XSpi_Transfer(&SPI0, data, NULL, length) != XST_SUCCESS) {
        xil_printf("SPI WriteBytes failed\n\r");
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

// Convenience function: write 24-bit register
void SPI_WriteReg24(u32 regValue)
{
    u8 buffer[3];
    buffer[0] = (regValue >> 16) & 0xFF;
    buffer[1] = (regValue >> 8)  & 0xFF;
    buffer[2] = regValue & 0xFF;

    // Assert CS (slave select) before transfer
    XSpi_SetSlaveSelect(&SPI0, 0);

    // Send 3 bytes
    SPI_WriteBytes(buffer, 3);

    // Deassert CS
    XSpi_SetSlaveSelect(&SPI0, 1);
}
