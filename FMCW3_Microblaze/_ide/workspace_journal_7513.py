# 2026-05-18T10:30:21.365881683
import vitis

client = vitis.create_client()
client.set_workspace(path="FMCW3_Microblaze")

vitis.dispose()

