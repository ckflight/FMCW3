# 2026-03-30T13:00:38.306280200
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

