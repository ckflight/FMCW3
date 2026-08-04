# 2026-08-04T15:32:53.304785505
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

