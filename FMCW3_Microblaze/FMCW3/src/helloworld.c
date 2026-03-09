#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "definitions.h"

/*
    Microblaze resets SAMPLING_DONE and
    sends SOFTWARE_RESET for new radar operation
*/

int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
