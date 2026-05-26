## FMCW3 RADAR DESIGN

All RF, FPGA, PCB, VHDL, DSP, and Python software in this project were designed and developed by myself as a complete custom FMCW radar platform.

<img width="762" height="1077" alt="Image" src="https://github.com/user-attachments/assets/e1caf807-6a9b-46bc-819f-320c57762e42" />
<img width="1114" height="926" alt="Image" src="https://github.com/user-attachments/assets/3c51f631-6152-40ff-b9f9-fef74b0440d4" />


## 6 Layer KiCAD PCB Design:

6 Layer pcb design is open-source available at my repo below:

Repository:
https://github.com/ckflight/Radar3

<img width="1965" height="1053" alt="Image" src="https://github.com/user-attachments/assets/11a9e6bf-fdd8-42be-b9f6-64cc2b13965d" />

## Horn Antenna, Directional Coupler and RF Simulation Files

The radar uses custom-designed horn antennas, transmission lines, and RF structures developed and simulated in CST, ADS and MATLAB.

The TX path includes a directional coupler for continuous FMCW operation, coupling approximately 16 dB of the transmitted signal into the mixer path with only ~0.25 dB insertion loss on the main RF path.

Unlike Wilkinson power splitters, which dissipate roughly half of the transmit power internally, the directional coupler preserves TX efficiency while still providing LO drive for the mixer.

Repository:
https://github.com/ckflight/CST_ADS_MODELS_SIMULATIONS

<img width="2380" height="1110" alt="Image" src="https://github.com/user-attachments/assets/5b39a7a4-7f79-4f6f-8da1-534c526e23f1" />
<img width="2380" height="1137" alt="Image" src="https://github.com/user-attachments/assets/2ca6d335-5580-472a-bd9b-5ad62e2b9007" />

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

## ⚡ FMCW Radar Control and Data Acquisition Flow Chart on FPGA

<img width="1693" height="929" alt="Image" src="https://github.com/user-attachments/assets/638ad404-c555-430b-8f82-d61743031a05" />

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

## 📡 Real Radar Results

### FFT Range Doppler Map:
<img width="1162" height="741" alt="Image" src="https://github.com/user-attachments/assets/1cf31d79-5845-483a-84d9-bae745000e7b" />
<img width="1162" height="741" alt="Image" src="https://github.com/user-attachments/assets/419cf99c-60ec-4474-b80c-2169f96ab062" />
<img width="991" height="905" alt="Image" src="https://github.com/user-attachments/assets/bb00f391-63bf-4b53-a2ca-cd97da831953" />
<img width="2048" height="1712" alt="Image" src="https://github.com/user-attachments/assets/58a32fe0-b599-417d-b7ea-41744127d972" />
<img width="992" height="935" alt="Image" src="https://github.com/user-attachments/assets/ba075ff8-9d15-493a-8c90-02796d9c49e8" />

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

### Noise Floor:
For 400 KHz cutoff FIR HPF, the noise floor is around -110 dBFS/bin. Higher cutoff cretes lower noise floor (-120 dBFS/bin 600 KHz) but higher output power is needed!
<img width="1195" height="896" alt="Image" src="https://github.com/user-attachments/assets/1029cd31-db38-4f8b-9d56-459da68f6728" />

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


**🚀 Key Features**

Dual-clock architecture: 40 MHz sampling / 100 MHz MicroBlaze control

USB 2.0 synchronous FIFO communication to PC

FIR low-pass filtering and decimation integrated in the ADC chain

Real-time ramp/gap control via ADF4158 MUXOUT

Software reset and handshake signals between VHDL logic and MicroBlaze firmware

Extendable for BRAM-based data exchange or AXI-DMA streaming

**🧠 Next Steps**

Implement shared dual-port BRAM for configuration data exchange with MicroBlaze

Integrate FFT/range-Doppler preprocessing

Add Python GUI for runtime control and data visualization
