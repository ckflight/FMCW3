# 2026-08-04T13:58:48.172611162
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

vitis.dispose()

