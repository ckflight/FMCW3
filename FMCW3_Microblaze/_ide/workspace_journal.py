# 2026-03-25T13:13:23.950313400
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

comp = client.create_app_component(name="FMCW3_App",platform = "$COMPONENT_LOCATION/../FMCW3_Microblaze/export/FMCW3_Microblaze/FMCW3_Microblaze.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

comp = client.get_component(name="FMCW3_App")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["spi.c", "adf4158.c", "helloworld.c", "platform.c", "gpio.c"])

status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

status = platform.build()

comp.build()

client.delete_component(name="FMCW3")

client.delete_component(name="componentName")

