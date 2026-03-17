
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

#include "gpio.h"
#include "adf4158.h"

#define FIFO_BASEADDR       XPAR_XLLFIFO_0_BASEADDR
#define CONFIG_PACKET_SIZE  128

static XLlFifo Fifo;

config_parameters_t config_parameters;

int initFifo(void){

    xil_printf("FIFO RX test start\r\n");

    XLlFifo_Initialize(&Fifo, FIFO_BASEADDR);
    XLlFifo_IntClear(&Fifo, 0xFFFFFFFF);

    return XST_SUCCESS;
}

int main(void){

    init_platform();

    // Init SPI (already in spi.c)
    SPI_Init();

    // Init GPIO pins
    // 16 bit output gpio is used to set these pins
    // adf_ce                      <= s_gpio_rtl_0_tri_o(0); -- microblaze 16 bit gpio's bit 0 is controlling this. It will be written 1 to power device
    // adf_le                      <= s_gpio_rtl_0_tri_o(1); -- microblaze 16 bit gpio's bit 1 is spi_cs of adf4158
    // s_microblaze_done           <= s_gpio_rtl_0_tri_o(2); -- microblaze 16 bit gpio's bit 2 is microblaze's done signal to finish sampling
    // s_ramp_configured           <= s_gpio_rtl_0_tri_o(3); -- microblaze 16 bit gpio's bit 3 is ramp configured signal
    // s_soft_reset_n              <= s_gpio_rtl_0_tri_o(4); -- microblaze 16 bit gpio's bit 4 is software reset to reset everything instead of handshake singals between modules.
    GPIO_Init();

    // Make sure CE low, LE high
    GPIO_ClearPin(ADF_CE_PIN);
    GPIO_SetPin(ADF_LE_PIN);


    int Status;
    uint32_t word;
    uint8_t buffer[CONFIG_PACKET_SIZE];

    Status = initFifo();
    if (Status != XST_SUCCESS) {
        xil_printf("FIFO initialization error\r\n");
        cleanup_platform();
        return XST_FAILURE;
    }

    // 128x 32 bit data will be received but for the ease of use 8 bit of it is used as data
    // so last 8 bit is taken
    for (int i = 0; i < CONFIG_PACKET_SIZE; i++) {
        while (XLlFifo_iRxOccupancy(&Fifo) == 0);
        word = XLlFifo_RxGetWord(&Fifo);
        buffer[i] = (uint8_t)(word & 0xFF);
    }

    // Parse the received bytes here. It will be added a struct pointer to pass
    config_parameters.check_mode = buffer[0]; // example
    config_parameters.sweep_start_frequency = buffer[1] << 8 | buffer[2]; // example
    
    // Init rf sythnesizer
    ADF4158_Init(SAWTOOTH_WAVEFORM, &config_parameters);

    while (1) {


        
    }

    cleanup_platform();
    return XST_SUCCESS;
}