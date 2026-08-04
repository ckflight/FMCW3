# 2026-08-03T16:00:14.953014843
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

platform = client.get_component(name="FMCW3_Microblaze")
status = platform.build()

comp = client.get_component(name="FMCW3_App")
comp.build()

vitis.dispose()

