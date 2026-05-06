#include "spi.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"

XSpi SPI0;

int SPI_Init(void)
{
    int Status;
    XSpi_Config *SPIConfig;

    SPIConfig = XSpi_LookupConfig(XPAR_AXI_QUAD_SPI_0_BASEADDR);
    if (SPIConfig == NULL) {
        xil_printf("SPI LookupConfig failed\r\n");
        return XST_FAILURE;
    }

    Status = XSpi_CfgInitialize(&SPI0, SPIConfig, SPIConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI Initialization failed\r\n");
        return XST_FAILURE;
    }

    Status = XSpi_SetOptions(&SPI0,
                             XSP_MASTER_OPTION |
                             XSP_MANUAL_SSELECT_OPTION);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI SetOptions failed\r\n");
        return XST_FAILURE;
    }

    Status = XSpi_Start(&SPI0);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI Start failed\r\n");
        return XST_FAILURE;
    }

    XSpi_IntrGlobalDisable(&SPI0);

    XSpi_SetSlaveSelect(&SPI0, 0x00);

    xil_printf("SPI Init OK\r\n");

    return XST_SUCCESS;
}

int SPI_WriteBytes(u8 *data, int length)
{
    int Status;

    /*
        Select slave 0.
        With XSpi_SetSlaveSelect(), use 0x01 to select slave bit 0.
        Do NOT use 0 here to assert CS.
    */
    Status = XSpi_SetSlaveSelect(&SPI0, 0x01);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI slave select failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    Status = XSpi_Transfer(&SPI0, data, NULL, length);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI transfer failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /*
        Deselect all slaves.
    */
    Status = XSpi_SetSlaveSelect(&SPI0, 0x00);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI slave deselect failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

void SPI_WriteReg24(u32 regValue)
{
    u8 buffer[3];

    buffer[0] = (regValue >> 16) & 0xFF;
    buffer[1] = (regValue >> 8)  & 0xFF;
    buffer[2] = regValue & 0xFF;

    SPI_WriteBytes(buffer, 3);
}