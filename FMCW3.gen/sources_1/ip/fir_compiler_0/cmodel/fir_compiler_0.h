
//------------------------------------------------------------------------------
// (c) Copyright 2023 Advanced Micro Devices. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_compiler_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 0.0229602890894,0.00766570309319,0.0087288349464,0.00972504958514,0.0106156390885,0.0113623203564,0.0119264094008,0.0122659571109,0.0123434511381,0.0121266174594,0.0115888530755,0.0107062098145,0.00946124371206,0.00783940387829,0.00584328173343,0.00348879809807,0.000791223838255,-0.00222420922239,-0.00550659108672,-0.00899889051964,-0.0126594483886,-0.0163909345728,-0.0201265200501,-0.0237706899366,-0.0272294766065,-0.0304000294904,-0.0331789782795,-0.0354605116168,-0.0371423521721,-0.038122713819,-0.0383107507653,-0.0376129687401,-0.0359658037501,-0.0332995526798,-0.0295646077459,-0.0247360150642,-0.0187990340907,-0.0117533173635,-0.00362664117366,0.00553288537378,0.0156674752688,0.0266896460063,0.0384972197375,0.0509678097928,0.0639653110558,0.0773383913847,0.0909251418414,0.104551662621,0.118043694188,0.131205329001,0.143912550021,0.155890014197,0.167063313835,0.177237964371,0.186238108835,0.193943301914,0.200256814799,0.205084888643,0.208348780068,0.209994730988,0.209994730988,0.208348780068,0.205084888643,0.200256814799,0.193943301914,0.186238108835,0.177237964371,0.167063313835,0.155890014197,0.143912550021,0.131205329001,0.118043694188,0.104551662621,0.0909251418414,0.0773383913847,0.0639653110558,0.0509678097928,0.0384972197375,0.0266896460063,0.0156674752688,0.00553288537378,-0.00362664117366,-0.0117533173635,-0.0187990340907,-0.0247360150642,-0.0295646077459,-0.0332995526798,-0.0359658037501,-0.0376129687401,-0.0383107507653,-0.038122713819,-0.0371423521721,-0.0354605116168,-0.0331789782795,-0.0304000294904,-0.0272294766065,-0.0237706899366,-0.0201265200501,-0.0163909345728,-0.0126594483886,-0.00899889051964,-0.00550659108672,-0.00222420922239,0.000791223838255,0.00348879809807,0.00584328173343,0.00783940387829,0.00946124371206,0.0107062098145,0.0115888530755,0.0121266174594,0.0123434511381,0.0122659571109,0.0119264094008,0.0113623203564,0.0106156390885,0.00972504958514,0.0087288349464,0.00766570309319,0.0229602890894
// chanpats: 173
// name: fir_compiler_0
// filter_type: 2
// rate_change: 0
// interp_rate: 1
// decim_rate: 20
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 120
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 1
// coeff_width: 16
// coeff_fract_width: 17
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 17
// data_fract_width: 0
// output_rounding_mode: 4
// output_width: 16
// output_fract_width: 0
// config_method: 0

const double fir_compiler_0_coefficients[120] = {0.0229602890894,0.00766570309319,0.0087288349464,0.00972504958514,0.0106156390885,0.0113623203564,0.0119264094008,0.0122659571109,0.0123434511381,0.0121266174594,0.0115888530755,0.0107062098145,0.00946124371206,0.00783940387829,0.00584328173343,0.00348879809807,0.000791223838255,-0.00222420922239,-0.00550659108672,-0.00899889051964,-0.0126594483886,-0.0163909345728,-0.0201265200501,-0.0237706899366,-0.0272294766065,-0.0304000294904,-0.0331789782795,-0.0354605116168,-0.0371423521721,-0.038122713819,-0.0383107507653,-0.0376129687401,-0.0359658037501,-0.0332995526798,-0.0295646077459,-0.0247360150642,-0.0187990340907,-0.0117533173635,-0.00362664117366,0.00553288537378,0.0156674752688,0.0266896460063,0.0384972197375,0.0509678097928,0.0639653110558,0.0773383913847,0.0909251418414,0.104551662621,0.118043694188,0.131205329001,0.143912550021,0.155890014197,0.167063313835,0.177237964371,0.186238108835,0.193943301914,0.200256814799,0.205084888643,0.208348780068,0.209994730988,0.209994730988,0.208348780068,0.205084888643,0.200256814799,0.193943301914,0.186238108835,0.177237964371,0.167063313835,0.155890014197,0.143912550021,0.131205329001,0.118043694188,0.104551662621,0.0909251418414,0.0773383913847,0.0639653110558,0.0509678097928,0.0384972197375,0.0266896460063,0.0156674752688,0.00553288537378,-0.00362664117366,-0.0117533173635,-0.0187990340907,-0.0247360150642,-0.0295646077459,-0.0332995526798,-0.0359658037501,-0.0376129687401,-0.0383107507653,-0.038122713819,-0.0371423521721,-0.0354605116168,-0.0331789782795,-0.0304000294904,-0.0272294766065,-0.0237706899366,-0.0201265200501,-0.0163909345728,-0.0126594483886,-0.00899889051964,-0.00550659108672,-0.00222420922239,0.000791223838255,0.00348879809807,0.00584328173343,0.00783940387829,0.00946124371206,0.0107062098145,0.0115888530755,0.0121266174594,0.0123434511381,0.0122659571109,0.0119264094008,0.0113623203564,0.0106156390885,0.00972504958514,0.0087288349464,0.00766570309319,0.0229602890894};

const xip_fir_v7_2_pattern fir_compiler_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_compiler_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_compiler_0";
  config.filter_type         = 2;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 20;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_compiler_0_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 120;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_QUANTIZED_ONLY;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 17;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_compiler_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 17;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_CONVERGENT_EVEN;
  config.output_width        = 16;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_compiler_0_config = gen_fir_compiler_0_config();

