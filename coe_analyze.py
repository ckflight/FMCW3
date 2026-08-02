import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import freqz

# -----------------------------
# CONFIG
# -----------------------------
coe_file = "/home/ck/Desktop/Workspace/FPGA_Workspace/Vivado/FMCW3/fir_hpf_250khz_gain10.coe"

Fs = 40e6  # Sampling rate (Hz)

# -----------------------------
# LOAD COEFFICIENTS
# -----------------------------
with open(coe_file, 'r') as f:
    lines = f.readlines()

coef_line = None
for line in lines:
    if "CoefData" in line:
        coef_line = line.split('=')[1].strip().rstrip(';')
        break

if coef_line is None:
    raise ValueError("No CoefData found in the COE file.")

coefs = np.array([float(x) for x in coef_line.split(',')])
print(f"Number of taps: {len(coefs)}")
print(f"First 10 coefficients: {coefs[:10]}")

# -----------------------------
# FREQUENCY RESPONSE
# -----------------------------
w, h = freqz(coefs, worN=2048)
freq_hz = w * Fs / (2 * np.pi)

# -----------------------------
# PLOTS (All in One Page)
# -----------------------------
fig, axs = plt.subplots(3, 1, figsize=(10, 10))

# Impulse Response
axs[0].stem(coefs, basefmt=" ")
axs[0].set_title("FIR Impulse Response")
axs[0].set_xlabel("Tap Index")
axs[0].set_ylabel("Coefficient")
axs[0].grid(True)

# Magnitude Response
axs[1].plot(freq_hz / 1e6, 20 * np.log10(np.abs(h)))
axs[1].set_title("FIR Magnitude Response")
axs[1].set_xlabel("Frequency (MHz)")
axs[1].set_ylabel("Magnitude (dB)")
axs[1].grid(True)

# Phase Response
axs[2].plot(freq_hz / 1e6, np.angle(h))
axs[2].set_title("FIR Phase Response")
axs[2].set_xlabel("Frequency (MHz)")
axs[2].set_ylabel("Phase (radians)")
axs[2].grid(True)

plt.tight_layout()
plt.show()
