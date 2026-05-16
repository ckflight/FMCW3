# 2026-05-14T20:15:20.996079096
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["helloworld.c", "spi.c", "platform.c", "gpio.c"])

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

vitis.dispose()

