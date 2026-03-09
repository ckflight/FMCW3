#include "xbram.h"

XBram_Config XBram_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,lmb-bram-if-cntlr-4.0", /* compatible */
		0x0, /* reg */
		0x20, /* xlnx,data-width */
		0x0, /* xlnx,ecc */
		0x0, /* xlnx,fault-inject */
		0x0, /* xlnx,ce-failing-registers */
		0x0, /* xlnx,bram-correctable-failing-data-regs */
		0x0, /* xlnx,ue-failing-registers */
		0x0, /* xlnx,bram-uncorrectable-failing-data-regs */
		0x0, /* xlnx,bram-ecc-status-interrupt-present */
		0x0, /* xlnx,bram-correctable-counter-bits */
		0x0, /* xlnx,ecc-onoff-register */
		0x1, /* xlnx,ecc-onoff-reset-value */
		0x2, /* xlnx,write-access */
		0x0, /* xlnx,bram-mem-base-address */
		0x0, /* xlnx,bram-mem-high-address */
		0x0, /* xlnx,mem-ctrl-base-address */
		0x0, /* xlnx,mem-ctrl-high-address */
		0xffff, /* interrupts */
		0xffff /* interrupt-parent */
	},
	 {
		 NULL
	}
};