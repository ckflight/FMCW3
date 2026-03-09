# 2025-11-30T09:37:49.614276165
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.build()

status = platform.build()

comp = client.get_component(name="FMCW3")
comp.build()

vitis.dispose()

