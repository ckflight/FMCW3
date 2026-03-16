
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

#define FIFO_BASEADDR       XPAR_XLLFIFO_0_BASEADDR
#define CONFIG_PACKET_SIZE  128

static XLlFifo Fifo;

int initFifo(void)
{
    xil_printf("FIFO RX test start\r\n");

    XLlFifo_Initialize(&Fifo, FIFO_BASEADDR);
    XLlFifo_IntClear(&Fifo, 0xFFFFFFFF);

    return XST_SUCCESS;
}

int main(void)
{
    int Status;
    int i;
    uint32_t word;
    uint8_t buffer[CONFIG_PACKET_SIZE];

    init_platform();

    xil_printf("Hello World\r\n");
    xil_printf("Successfully ran Hello World application\r\n");

    Status = initFifo();
    if (Status != XST_SUCCESS) {
        xil_printf("FIFO initialization error\r\n");
        cleanup_platform();
        return XST_FAILURE;
    }

    while (1) {
        xil_printf("Waiting for config packet...\r\n");

        for (i = 0; i < CONFIG_PACKET_SIZE; i++) {
            while (XLlFifo_iRxOccupancy(&Fifo) == 0);

            word = XLlFifo_RxGetWord(&Fifo);
            buffer[i] = (uint8_t)(word & 0xFF);
        }

        xil_printf("Packet received:\r\n");
        for (i = 0; i < CONFIG_PACKET_SIZE; i++) {
            xil_printf("%02X ", buffer[i]);
            if ((i & 0x0F) == 0x0F) {
                xil_printf("\r\n");
            }
        }
    }

    cleanup_platform();
    return XST_SUCCESS;
}