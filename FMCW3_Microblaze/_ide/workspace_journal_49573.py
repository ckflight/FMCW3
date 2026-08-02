# 2026-05-21T11:34:42.032965388
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

vitis.dispose()

