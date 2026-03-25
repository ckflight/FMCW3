#ifndef ADF4158_H
#define ADF4158_H

#include "xgpio.h"
#include "xil_types.h"

#include "definitions.h"

typedef struct config_parameters_s{

    uint32_t sweep_time;
    uint32_t sweep_delay;
    uint32_t record_time;
    
    uint32_t sweep_start_frequency;
    uint32_t sweep_bandwidth;
    
    uint8_t tx_mode;
    uint8_t sweep_type;
    uint8_t data_log;
    uint8_t check_mode;
        
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
