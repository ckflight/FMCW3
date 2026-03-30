# 2026-03-27T14:43:43.557624
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

vitis.dispose()

