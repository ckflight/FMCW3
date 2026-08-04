# 2026-08-03T15:35:19.602655583
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

