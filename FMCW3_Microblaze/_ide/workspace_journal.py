# 2026-03-25T09:52:17.440987700
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

client.delete_component(name="FMCW3_Microblaze")

client.delete_component(name="FMCW3_Microblaze")

platform = client.create_platform_component(name = "FMCW3_Microblaze",hw_design = "$COMPONENT_LOCATION/../../top_module.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

platform = client.get_component(name="FMCW3_Microblaze")
domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.set_config(option = "lib", param = "XILTIMER_en_interval_timer", value = "true", lib_name="xiltimer")

status = platform.build()

status = platform.build()

comp = client.get_component(name="FMCW3")
comp.build()

status = platform.build()

comp.build()

