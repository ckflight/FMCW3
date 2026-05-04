#ifndef ADF4158_H
#define ADF4158_H

#include "xgpio.h"
#include "xil_types.h"

#include "definitions.h"

typedef struct config_parameters_s{

    // uint16 fields (from packet)
    uint16_t sweep_time;             // [2,3]
    uint16_t sweep_delay;            // [4,5]
    uint16_t sampling_frequency;     // [7,8]  (kHz)
    uint16_t number_of_samples;      // [9,10]
    uint16_t sweep_start_frequency;  // [11,12]
    uint16_t sweep_bandwidth;        // [13,14]

    // uint8 fields
    uint8_t record_time;             // [6]

    uint8_t tx_mode;                 // [15]
    uint8_t gain;                    // [16]
    uint8_t sweep_type;              // [17]
    uint8_t data_log;                // [18]
    uint8_t adc_select;              // [19]
    uint8_t use_pll;                 // [20]
    uint8_t check_mode;              // [21]
    uint8_t usb_data_type;           // [22]
    uint8_t adc_resolution;          // [23]
    uint8_t sample_averaging;        // [24]

} config_parameters_t;

extern config_parameters_t config_parameters;

#define FREQ_PFD       30000000U

typedef enum {
    SAWTOOTH_WAVEFORM = 0,
    TRIANGULAR_WAVEFORM = 1
} WAVEFORM_TYPE;

void ADF4158_Init(WAVEFORM_TYPE wf, config_parameters_t* parameters);
void ADF4158_Configure_Sweep(WAVEFORM_TYPE wf, double startFreq, double bw, double rampTime, double rampDelay);
void ADF4158_DeviceEnable(void);
void ADF4158_WriteRegister(u32 data);

#endif
