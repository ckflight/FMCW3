# FMCW3 Dual-Receiver FPGA Radar Platform

All RF, FPGA, PCB, VHDL, DSP, Antenna Design, RF Simulations and Python software in this project were designed and developed by myself as a complete custom FMCW radar platform.

The system supports:

- FMCW range measurement
- Range-Doppler processing
- SAR imaging experiments
- Phase-based micromotion detection
- Breathing and heartbeat monitoring
- Dual-channel coherent acquisition
- Phase interferometry
- Angle-of-arrival (AoA) estimation
- Real-time FPGA DSP processing
- High-speed USB radar streaming
- Custom RF front-end and antenna development

The platform combines custom RF hardware, FPGA firmware, DSP algorithms, CST/ADS simulations, and Python radar processing tools into a fully integrated radar development system.

<img width="3213" height="5712" alt="Image" src="https://github.com/user-attachments/assets/ab893c9d-a40d-483f-96b9-9a0571b3d1e8" />
<img width="3024" height="3262" alt="Image" src="https://github.com/user-attachments/assets/973636ee-38c4-4722-b24b-6a6f02f2c5ea" />

## 6 Layer KiCAD PCB Design:

6-layer PCB design is available as open-source hardware:

Repository:
https://github.com/ckflight/Radar3

<img width="1696" height="858" alt="Image" src="https://github.com/user-attachments/assets/5335b825-3517-4dba-8bd4-ddfef8373c90" />

## IMPORTANT Notes:
I have designed several pcb version of this Radar. jlcpcb_version branch uses XC7A35T FPGA and the main branch has XC7A100T FPGA. I have uploaded .ltx .bit .bin files for both FPGAs.

## JTAG Programming Notes:

### Programming with on-board FT2232H:

FT2232H Channel A is set for SYNC FIFO 245 with D2XX driver
FT2232H Channel B is for JTAG and left as Virtual Com Port

1. Build ELF  
   Compile the MicroBlaze application to generate the .elf file.

2. Associate ELF in Vivado  
   Open the block design.  
   Right-click the MicroBlaze core → Associate ELF Files.  
   Select the compiled .elf from your application build directory.

3. Update After Code Changes  
   Rebuild the application to update the .elf.  
   Re-run Synthesis → Implementation → Generate Bitstream.  
   (If Vivado doesn’t detect changes, make a trivial edit in the top module to force refresh.)

4. Program FPGA (M[2:0]: 101 JTAG Mode)
   Run: openFPGALoader -c ft2232_b <path_to_bitfile>.bit

5. Flash FPGA (M[2:0]: 001 SPI Flah Mode)
   Run: openFPGALoader -c ft2232_b --fpga-part xc7a35tftg256 -f top_module.bin


### Programming with Xilinx DLC10 Debugger:

1. Unsolder 3 resistors R84 R85 R88 from FT2232H to JTAG line to isolate it.

2. Solder Xilinx JTAG's TMS TCK TDI TDO VREF GND to pcb pads.

3. Vivado will recognize the device.

## ⚡ FMCW Radar Control, Data Acquisition and Schematic Flow Chart on FPGA:

<img width="1693" height="929" alt="Image" src="https://github.com/user-attachments/assets/638ad404-c555-430b-8f82-d61743031a05" />
<img width="1528" height="1022" alt="Image" src="https://github.com/user-attachments/assets/e8c7b495-665f-4af5-ac38-7a227a5030c1" />

## 🔧 System Architecture

The design separates slow-control and high-speed signal processing into two domains:

### 1. MicroBlaze Subsystem

The MicroBlaze subsystem handles radar control, peripheral configuration and FPGA logic. It is responsible for configuring the ADF4158 PLL and external RF front-end components through AXI-based SPI and GPIO peripherals. The subsystem also manages radar operation states by generating and monitoring control signals such as ramp start, configuration complete, and acquisition status flags.

<img width="2203" height="1089" alt="Image" src="https://github.com/user-attachments/assets/e006aeda-6d44-48e4-a493-0dd887b48eb1" />

**Microblaze.vhd** — Top-level MicroBlaze integration containing AXI SPI, GPIO, clocking, and control interfaces used for radar configuration and coordination with the high-speed VHDL acquisition logic.

### 2. FPGA Logic Subsystem:

Implements the real-time FMCW radar data path, from radar configuration and ramp synchronization to high-speed ADC acquisition, FIR filtering, decimation, buffering, and USB 2.0 streaming to the host PC using an FT2232H in synchronous FIFO mode.

**Config.vhd** — Receives radar configuration packets from the host PC over USB; Verifies framing and transfers parameters to MicroBlaze over axi interface; Asserts config_done when complete.

**Control.vhd** — Main FSM that coordinates ADC sampling during ramp (MUXOUT = 0), USB transmission, and controls PA enable and ADC OE/SHDN lines.

**Adc.vhd** — Dual-phase ADC interface performing interleaved capture of two channels. Includes fir_compiler_0 IP cores (g_fir.fir1, g_fir.fir2) for high pass range compensation filtering and ×20 decimation, generating synchronized data_a / data_b outputs.

**Usb_sync.vhd** — Implements the FT2232H synchronous FIFO interface for USB 2.0 data transfer achieving around 11 MB/sec speed.

Contains two fifo_generator_0 IP cores: rx_dcfifo – Receives configuration data from PC (RX path). tx_dcfifo – Buffers outgoing ADC samples to USB (TX path).

**clk_wiz_0** — MMCM generating both 40 MHz (logic) and 100 MHz (MicroBlaze) clock domains with phase alignment.

**ila_probes** — Integrated Logic Analyzer core used for hardware-level probing of control FSM states, ADC valid pulses, and USB FIFO activity.

### Noise Floor:
For 400 KHz cutoff FIR HPF, the noise floor is around -110 dBFS/bin. Higher cutoff frequencies (-120 dBFS/bin FIR 600 KHz) reduce the visible noise floor but require higher received signal power so higher output power is needed!
<img width="1195" height="896" alt="Image" src="https://github.com/user-attachments/assets/1029cd31-db38-4f8b-9d56-459da68f6728" />

## RF/IF Chain Noise Floor Calculation:

The following estimation compares RF/IF receiver noise against the theoretical ADC FFT-bin noise floor.

For a 250 µs FMCW chirp:

$$
B_{bin}=\frac{1}{T_{chirp}}=4\ kHz
$$

Thermal noise per FFT bin:

$$
P_{n,in}=-174+10\log_{10}(4000)\approx-138\ dBm/bin
$$

Receiver chain:

| Stage | Gain | NF |
|---|---:|---:|
| SKY65404-31 | 13 dB | 1 dB |
| TRF37A73 | 12 dB | 4.5 dB |
| ADL5802 | 7.6 dB voltage conversion gain | 11 dB |

Total gain:

$$
G_{total}=13+12+7.6=32.6\ dB
$$

Including LNA noise figure:

$$
P_{n,IF}=-138+1+32.6\approx-104.4\ dBm/bin
$$

For 1.5 Vpp differential full-scale into 200Ω:

$$
P_{FS}\approx1.5\ dBm
$$

Expected RF/IF noise floor:

$$
P_{noise,dBFS/bin}=-104.4-1.5\approx-106\ dBFS/bin
$$

The LTC2292 ADC has approximately 71.3 dB SNR.

For 40 MHz sampling and 250 µs chirps:

$$
N=40MHz\cdot250\mu s=10000
$$

$$
G_{FFT}=10\log_{10}(10000)=40\ dB
$$

$$
P_{ADC,bin}=-71.3-40\approx-111.3\ dBFS/bin
$$

For 1 ms chirps:

$$
N=40MHz\cdot1ms=40000
$$

$$
G_{FFT}=10\log_{10}(40000)\approx46\ dB
$$

$$
P_{ADC,bin}=-71.3-46\approx-117.3\ dBFS/bin
$$

Longer chirps reduce FFT bin bandwidth and lower the ADC FFT-bin noise floor. Since the RF/IF chain noise floor is around **-106 dBFS/bin**, the system is mainly limited by the RF/IF receiver chain rather than the LTC2292 ADC.

## 📡 Real Radar Results with Python Scripts

This section presents real FMCW radar measurements processed with custom Python tools, including range FFT, range-Doppler maps, waterfall plots, coherent chirp integration, and phase analysis. The results demonstrate practical target detection, motion estimation, phase stability, and micro-motion measurement using recorded radar data from the custom FMCW3 hardware.

The following scripts are used to acquire, process, and visualize FMCW radar data:

- `FMCW3_record.py` — Radar configuration, acquisition, and binary data recording
- `FMCW3_adc_plot.py` — Real-time ADC waveform and FFT visualization
- `FMCW3_chirp_integration_waterfall.py` — Coherent chirp integration and waterfall/range visualization
- `FMCW3_noise_floor.py` — FFT-bin noise floor and receiver sensitivity analysis
- `FMCW3_phase_analysis.py` — Chirp-to-chirp and CPI-to-CPI coherent phase stability analysis

Repository:
https://github.com/ckflight/FMCW_RADAR_2v2

### FFT Range Doppler Map:
<img width="720" height="406" alt="Image" src="https://github.com/user-attachments/assets/b71b6ef7-48ec-47a3-8244-f8cf0fc10217" />
<img width="1143" height="1069" alt="Image" src="https://github.com/user-attachments/assets/868f55ef-ad18-4dfe-9a2d-d6e83c3012fc" />
<img width="1312" height="1199" alt="Image" src="https://github.com/user-attachments/assets/1819a4ce-aea6-44b5-9aa3-46346d492b4b" />
<img width="991" height="905" alt="Image" src="https://github.com/user-attachments/assets/bb00f391-63bf-4b53-a2ca-cd97da831953" />
<img width="992" height="935" alt="Image" src="https://github.com/user-attachments/assets/ba075ff8-9d15-493a-8c90-02796d9c49e8" />
<img width="1057" height="574" alt="Image" src="https://github.com/user-attachments/assets/3fef4907-246d-4346-965c-9740aa9d1f68" />
<img width="1194" height="989" alt="Image" src="https://github.com/user-attachments/assets/0e75e39f-f537-42d3-8b64-683e73a9213d" />

## Phase-Stability Chirp to Chirp and CPI to CPI:

FMCW3 performs coherent complex phase tracking on selected range bins to verify chirp-to-chirp and CPI-to-CPI phase stability. Stable phase response validates synthesizer coherence, synchronized sampling, and RF chain stability required for SAR, Doppler, interferometry, and micro-motion measurements.

<img width="1390" height="795" alt="Image" src="https://github.com/user-attachments/assets/7a69c306-65e2-41d1-b15a-288e4fe307da" />

## Phase-Based Micromotion Measurement

FMCW radar can detect very small target movements using phase changes of the received signal:

$$
\Delta d = \frac{\lambda \Delta \phi}{4\pi}
$$

where:

- `Δd` = displacement
- `λ` = wavelength
- `Δφ` = phase change

At 5.8 GHz, the system was able to observe:

- Slow breathing motion
- Fast breathing motion
- Heartbeat-induced chest vibration

The radar demonstrated displacement sensitivity from centimeter-level breathing motion down to approximately **75 µm** phase-based movement detection.

<img width="2048" height="1098" alt="Image" src="https://github.com/user-attachments/assets/458af1db-ce7c-41d5-904e-1bab8cf9a594" />

## 🧩 Simulation and Probe Results

### Configuration Path:
Sequential byte reception over USB (config.vhd) forming correct 64-bit packets.

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/ecc14d3f-d771-4332-979e-05445e62164b" />


### Sampling & Control:
Proper sequencing of ADC sampling during ramp (MUXOUT = 0) and data upload during gap.

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/6f54ff55-025c-480d-ae85-85af0a34b7c0" />

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/60c4a199-748d-4475-af2e-11a2b4144a63" />


### ADC Behavior:
FIR-filtered and decimated dual-channel outputs synchronized with valid pulses.

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/dc2684fb-aff9-48e1-9ecc-e25510b73626" />

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/addd7541-d3f9-4c5a-bd35-dd87aca477c6" />

## Horn Antenna, Directional Coupler and RF Simulation Files

The radar uses custom-designed horn antennas, transmission lines, and RF structures developed and simulated in CST, ADS and MATLAB.

The TX path includes a directional coupler for continuous FMCW operation, coupling approximately 16 dB of the transmitted signal into the mixer path with only ~0.25 dB insertion loss on the main RF path.

Unlike Wilkinson power splitters, which dissipate roughly half of the transmit power internally, the directional coupler preserves TX efficiency while still providing LO drive for the mixer.

SMA launch transitions require PCB cutouts for proper 50Ω impedance matching. It is simulated with CST.

All of the mentioned simulations and designs are in my open source repo below:

Repository:
https://github.com/ckflight/CST_ADS_MODELS_SIMULATIONS

<img width="2380" height="1110" alt="Image" src="https://github.com/user-attachments/assets/5b39a7a4-7f79-4f6f-8da1-534c526e23f1" />
<img width="2380" height="1137" alt="Image" src="https://github.com/user-attachments/assets/2ca6d335-5580-472a-bd9b-5ad62e2b9007" />
<img width="4770" height="1566" alt="Image" src="https://github.com/user-attachments/assets/ea2fd1d7-00f2-4b3a-929e-fab6ae77e261" />
<img width="2400" height="2400" alt="Image" src="https://github.com/user-attachments/assets/a3d3fb16-9d6d-4d5e-943b-fde4adbb1bb3" />

## 🧮 COE File Analyzer and FIR Generator Scripts

This project includes Python helper scripts for designing and verifying FIR filter coefficients used by the Vivado FIR Compiler IP.

- **coe_analyze.py** — Loads an existing `.coe` coefficient file and plots the FIR impulse response, magnitude response, and phase response. This is useful for verifying the filter behavior before using it in the FPGA design.

- **fir_generator.py** — Generates FIR filter coefficients using `scipy.signal.firwin`, applies optional gain scaling, exports the coefficients in Vivado `.coe` format, and plots the designed filter response.

These scripts make it easier to tune the high-pass FIR filter used in the ADC signal path for range compensation, DC/low-frequency suppression, and decimation support.

###  FIR Compiler IP Settings:
<img width="1806" height="1257" alt="Image" src="https://github.com/user-attachments/assets/7e27453b-4022-4a9d-91b3-edf7237f1a74" />
<img width="1806" height="1257" alt="Image" src="https://github.com/user-attachments/assets/c53b0355-60f3-4d05-b8a7-8f85bf4f811b" />

### COE File:
<img width="998" height="1075" alt="Image" src="https://github.com/user-attachments/assets/94ce4b34-3ade-46f6-b227-c4c8b7270276" />
<img width="3657" height="1925" alt="Image" src="https://github.com/user-attachments/assets/11672161-dc26-4822-9536-ca332e899273" />


# License

This project is licensed under the GNU General Public License v3.0 (GPLv3).

You are free to use, modify, and distribute this software under the terms of the GPLv3 license. Any distributed modifications or derivative works must also be released under the same license and include source code.

For full license text:
https://www.gnu.org/licenses/gpl-3.0.html


# Author

Cenk Keskin

GitHub:
https://github.com/ckflight/FMCW3
