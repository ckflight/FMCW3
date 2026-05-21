<img width="3877" height="4323" alt="Image" src="https://github.com/user-attachments/assets/b057349b-30fe-44ee-a7ce-f4409edc3e3c" />

<img width="763" height="853" alt="Image" src="https://github.com/user-attachments/assets/5b431754-d049-44d8-aa6a-8ae7191d2724" />

<img width="765" height="965" alt="Image" src="https://github.com/user-attachments/assets/5638f28c-1a3f-4499-b84c-655ae3176829" />

**JTAG Programming Note with FT2232H:**

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

4. Program FPGA  
   Run: openFPGALoader -c ft2232_b <path_to_bitfile>.bit

**⚡ FMCW Radar Control and Data Acquisition on FPGA**

This project implements the complete digital backend of an FMCW radar system using VHDL and Xilinx MicroBlaze, integrating ramp control, ADC sampling, FIR decimation, and high-speed USB 2.0 streaming to a PC.

**🔧 System Architecture**

The design separates slow-control and high-speed signal processing into two domains:

**MicroBlaze Subsystem:**
Handles low-speed configuration of on-board ICs (ADF4158 PLL, amplifier) through GPIO, SPI, and UART interfaces.
Generates control signals such as ramp start, ramp configured, and sampling done flags.

<img width="2455" height="1361" alt="Image" src="https://github.com/user-attachments/assets/97c1fb37-c0f2-4179-9d8f-e6b94bec952f" />

**FPGA Logic Subsystem:**
Dedicated to high-speed ADC data acquisition and USB 2.0 data transfer to the host PC using an FT2232H in synchronous FIFO mode. Main modules of fpga design are:

**microblaze_wrapper.vhd** — Soft CPU subsystem with AXI peripherals for SPI, GPIO, and UART. Handles configuration of the ADF4158 PLL, ADC, and peripheral devices.

**config.vhd** — Receives radar configuration packets from the host PC over USB; verifies framing and transfers parameters to MicroBlaze; asserts config_done when complete.

**control.vhd** — Main FSM that coordinates ADC sampling during ramp (MUXOUT = 1), USB transmission during gap, and controls PA enable and ADC OE/SHDN lines.

**adc.vhd** — Dual-phase ADC interface performing interleaved capture of two channels. Includes fir_compiler_0 IP cores (g_fir.fir1, g_fir.fir2) for low-pass filtering and ×20 decimation, generating synchronized data_a / data_b outputs.

**usb_sync.vhd** — Implements the FT2232H synchronous FIFO interface for USB 2.0 data transfer.

Contains two fifo_generator_0 IP cores: rx_dcfifo – Receives configuration data from PC (RX path). tx_dcfifo – Buffers outgoing ADC samples to USB (TX path).

**clk_wiz_0** — MMCM generating both 40 MHz (logic) and 100 MHz (MicroBlaze) clock domains with phase alignment.

**ila_0** — Integrated Logic Analyzer core used for hardware-level probing of control FSM states, ADC valid pulses, and USB FIFO activity.


**Coe file analyzer python script:**

<img width="998" height="1075" alt="Image" src="https://github.com/user-attachments/assets/94ce4b34-3ade-46f6-b227-c4c8b7270276" />
<img width="3657" height="1925" alt="Image" src="https://github.com/user-attachments/assets/11672161-dc26-4822-9536-ca332e899273" />


**🧩 Simulation Results**


**Configuration Path:** Sequential byte reception over USB (config.vhd) forming correct 64-bit packets.

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/ecc14d3f-d771-4332-979e-05445e62164b" />


**Sampling & Control:** Proper sequencing of ADC sampling during ramp (MUXOUT = 1) and data upload during gap.

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/6f54ff55-025c-480d-ae85-85af0a34b7c0" />

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/60c4a199-748d-4475-af2e-11a2b4144a63" />


**ADC Behavior:** FIR-filtered and decimated dual-channel outputs synchronized with valid pulses.

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/dc2684fb-aff9-48e1-9ecc-e25510b73626" />

<img width="3247" height="1763" alt="Image" src="https://github.com/user-attachments/assets/addd7541-d3f9-4c5a-bd35-dd87aca477c6" />


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
