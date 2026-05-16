# 2026-05-15T18:37:35.025223049
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

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

domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.set_config(option = "lib", param = "XILTIMER_tick_timer", value = "axi_timer_0", lib_name="xiltimer")

status = domain.set_config(option = "lib", param = "XILTIMER_tick_timer", value = "None", lib_name="xiltimer")

status = platform.build()

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

status = comp.clean()

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

vitis.dispose()

