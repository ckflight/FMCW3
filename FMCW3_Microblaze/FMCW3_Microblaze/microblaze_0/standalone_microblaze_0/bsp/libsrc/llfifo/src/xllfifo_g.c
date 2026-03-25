#include "xllfifo.h"

XLlFifo_Config XLlFifo_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-fifo-mm-s-4.3", /* compatible */
		0x44a10000,
		0x0, /* reg */
		0x0, /* xlnx,data-interface-type */
		0x2000, /* interrupts */
		0x41200001 /* interrupt-parent */
	},
	 {
		 NULL
	}
};