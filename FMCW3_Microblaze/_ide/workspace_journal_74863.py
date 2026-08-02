# 2026-05-19T10:26:04.201638196
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

vitis.dispose()

