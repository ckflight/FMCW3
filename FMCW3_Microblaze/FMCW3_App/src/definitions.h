#ifndef DEFINITIONS_H
#define DEFINITIONS_H

// ==================== GPIO Pin Mapping ====================
// Adapt these to your 16-bit GPIO instance

#define ADF_CE_PIN          0   // GPIO[0] -> CE
#define ADF_LE_PIN          1   // GPIO[1] -> LE

#define SAMPLING_DONE       2   // GPIO[2] -> Sampling is done --> to FPGA
#define RAMP_CONFIGURED     3   // GPIO[3] -> Ramp is configured --> to FPGA
#define SOFTWARE_RESET      4   // GPIO[4] -> Software reset for next config and radar op --> to FPGA

#define LED                 5   // GPIO[5] -> On board led to check microblaze is working

#define FIR_ENABLE          6   // GPIO[6] -> Enable fir filter module in adc.vhd
#define SEND_DATA_TYPE      7   // GPIO[7] -> Send test data from 0 to number of samples in chirp (500 for 250microsec ramp etc.)
#define PA_MODE             8   // GPIO[8] -> PA on off control type

#endif // DEFINITIONS_H

