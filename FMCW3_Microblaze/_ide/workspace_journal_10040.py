# 2025-09-27T22:06:16.174830
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "FMCW3_Microblaze",hw_design = "$COMPONENT_LOCATION/../../../FPGA_Workspace/VIVADO_PROJECTS/FMCW3/top_module.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="FMCW3",platform = "$COMPONENT_LOCATION/../FMCW3_Microblaze/export/FMCW3_Microblaze/FMCW3_Microblaze.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.build()

status = platform.build()

comp = client.get_component(name="FMCW3")
comp.build()

status = platform.build()

comp.build()

