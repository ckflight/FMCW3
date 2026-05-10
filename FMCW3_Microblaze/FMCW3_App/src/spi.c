#include "spi.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"

XSpi SPI0;

int SPI_Init(void)
{
    int Status;

    Status = XSpi_Initialize(&SPI0, XPAR_AXI_QUAD_SPI_0_BASEADDR);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI Initialization failed\r\n");
        return XST_FAILURE;
    }

    XSpi_Reset(&SPI0);

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

    XSpi_SetSlaveSelect(&SPI0, 0x01);

    xil_printf("SPI Init OK\r\n");

    return XST_SUCCESS;
}

int SPI_WriteBytes(u8 *data, int length)
{
    int Status;

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

    Status = XSpi_SetSlaveSelect(&SPI0, 0x00);
    if (Status != XST_SUCCESS) {
        xil_printf("SPI slave deselect failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}
