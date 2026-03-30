# 2026-03-26T09:20:29.045836100
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

vitis.dispose()

