
cmake_minimum_required(VERSION 3.15)
project(bsp)

# Use CMAKE_LIBRARY_PATH in link_directories
link_directories(${CMAKE_LIBRARY_PATH})
        
set(DRIVER_TARGETS llfifo;gpio;intc;spi;tmrctr;uartlite;bram)
set(DRIVER_LOCATIONS C:/Xilinx/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/llfifo_v6_0;C:/Xilinx/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/gpio_v4_12;C:/Xilinx/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/intc_v3_21;C:/Xilinx/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/spi_v4_15;C:/Xilinx/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/tmrctr_v4_14;C:/Xilinx/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/uartlite_v3_12;C:/Xilinx/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/bram_v4_13)

list(LENGTH DRIVER_TARGETS no_of_drivers)
set(index 0)

while(${index} LESS ${no_of_drivers})
    list(GET DRIVER_TARGETS ${index} drv)
    list(GET DRIVER_LOCATIONS ${index} drv_dir)
    set(exp_dir "${drv_dir}/examples")
    add_custom_target(
        ${drv}_example ALL
        COMMAND lopper -f -O C:/Users/CK/Desktop/Vivado/FMCW3/FMCW3_Microblaze/FMCW3_Microblaze/microblaze_0/standalone_microblaze_0/bsp/libsrc/${drv} C:/Users/CK/Desktop/Vivado/FMCW3/FMCW3_Microblaze/FMCW3_Microblaze/microblaze_0/standalone_microblaze_0/bsp/hw_artifacts/microblaze_0_baremetal.dts -- bmcmake_metadata_xlnx microblaze_0 ${exp_dir} drvcmake_metadata
        BYPRODUCTS x${drv}_exlist.yaml)
    MATH(EXPR index "${index}+1")
endwhile()
