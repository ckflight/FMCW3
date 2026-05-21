import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import firwin, freqz

# =========================================================
# USER SETTINGS
# =========================================================

OUT_COE = "fir_hpf_400khz_gain16.coe"

FS = 40e6          # ADC sample rate before decimation
NUM_TAPS = 121      # odd number recommended for HPF
FILTER_TYPE = "highpass"
# Options: "lowpass", "highpass", "bandpass", "bandstop"

GAIN = 16.0

# Cutoff settings
CUTOFF_HZ = 400e3              # set for lowpass/highpass 
BAND_HZ = [200e3, 1.0e6]       # set for bandpass/bandstop

WINDOW = "hamming"

# Vivado FIR coefficient format
USE_FLOAT_COE = True           # True recommended for FIR Compiler
COEF_WIDTH = 16                # only used if USE_FLOAT_COE = False

# =========================================================
# DESIGN FILTER
# =========================================================

if FILTER_TYPE in ["lowpass", "highpass"]:
    coefs = firwin(
        NUM_TAPS,
        CUTOFF_HZ,
        fs=FS,
        pass_zero=(FILTER_TYPE == "lowpass"),
        window=WINDOW
    )

elif FILTER_TYPE in ["bandpass", "bandstop"]:
    coefs = firwin(
        NUM_TAPS,
        BAND_HZ,
        fs=FS,
        pass_zero=(FILTER_TYPE == "bandstop"),
        window=WINDOW
    )

else:
    raise ValueError("Invalid FILTER_TYPE")

coefs = coefs * GAIN

# =========================================================
# WRITE COE FILE (Vivado FIR Compiler format)
# =========================================================

with open(OUT_COE, "w") as f:

    f.write("Radix = 10;\n")
    f.write("CoefData = ")

    coef_strings = []

    if USE_FLOAT_COE:

        for c in coefs:
            coef_strings.append(f"{c:.18f}")

    else:

        scale = 2 ** (COEF_WIDTH - 1) - 1
        q = np.round(coefs * scale).astype(int)

        for c in q:
            coef_strings.append(str(c))

    f.write(",".join(coef_strings))
    f.write(";\n")

# =========================================================
# PLOT RESPONSE
# =========================================================

w, h = freqz(coefs, worN=8192)
freq_hz = w * FS / (2 * np.pi)

mag_db = 20 * np.log10(np.abs(h) + 1e-12)

fig, axs = plt.subplots(3, 1, figsize=(10, 10))

axs[0].stem(coefs, basefmt=" ")
axs[0].set_title("FIR Impulse Response")
axs[0].set_xlabel("Tap Index")
axs[0].set_ylabel("Coefficient")
axs[0].grid(True)

axs[1].plot(freq_hz / 1e6, mag_db)
axs[1].set_title("FIR Magnitude Response")
axs[1].set_xlabel("Frequency (MHz)")
axs[1].set_ylabel("Magnitude (dB)")
axs[1].grid(True)

axs[2].plot(freq_hz / 1e6, np.unwrap(np.angle(h)))
axs[2].set_title("FIR Phase Response")
axs[2].set_xlabel("Frequency (MHz)")
axs[2].set_ylabel("Phase (radians)")
axs[2].grid(True)

plt.tight_layout()
plt.show()