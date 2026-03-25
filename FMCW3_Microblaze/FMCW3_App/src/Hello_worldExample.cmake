set(IOMODULE_NUM_DRIVER_INSTANCES "")
set(UARTLITE_NUM_DRIVER_INSTANCES "mdm_1")
set(UARTLITE0_PROP_LIST "0x41400000")
list(APPEND TOTAL_UARTLITE_PROP_LIST UARTLITE0_PROP_LIST)
set(UARTNS550_NUM_DRIVER_INSTANCES "")
set(UARTPS_NUM_DRIVER_INSTANCES "")
set(UARTPSV_NUM_DRIVER_INSTANCES "")
set(microblaze_0_local_memory_dlmb_bram_if_cntlr_memory_0 "0x50;0xffb0")
set(DDR microblaze_0_local_memory_dlmb_bram_if_cntlr_memory_0)
set(CODE microblaze_0_local_memory_dlmb_bram_if_cntlr_memory_0)
set(DATA microblaze_0_local_memory_dlmb_bram_if_cntlr_memory_0)
set(TOTAL_MEM_CONTROLLERS "microblaze_0_local_memory_dlmb_bram_if_cntlr_memory_0")
set(MEMORY_SECTION "MEMORY
{
	microblaze_0_local_memory_dlmb_bram_if_cntlr_memory_0 : ORIGIN = 0x50, LENGTH = 0xffb0
}")
set(STACK_SIZE 0x400)
set(HEAP_SIZE 0x800)
