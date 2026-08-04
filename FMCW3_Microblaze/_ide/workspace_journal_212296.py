# 2026-08-03T14:51:03.811203116
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

comp = client.get_component(name="FMCW3_App")
status = comp.clean()

status = platform.build()

comp.build()

client.delete_component(name="FMCW3_Microblaze")

platform = client.create_platform_component(name = "FMCW3_Microblaze",hw_design = "$COMPONENT_LOCATION/../../top_module.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../top_module.xsa")

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="FMCW3_Microblaze")

platform = client.create_platform_component(name = "FMCW3_Microblaze",hw_design = "$COMPONENT_LOCATION/../../top_module.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

