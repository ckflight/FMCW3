// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
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
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: xilinx.com:ip:fir_compiler:7.2

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module fir_compiler_0_sv (
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA" *)
  (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.slave S_AXIS_DATA,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA" *)
  (* X_INTERFACE_MODE = "master M_AXIS_DATA" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.master M_AXIS_DATA,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire aclk
);

  // interface wire assignments
  assign M_AXIS_DATA.TDEST = 0;
  assign M_AXIS_DATA.TID = 0;
  assign M_AXIS_DATA.TKEEP = 0;
  assign M_AXIS_DATA.TLAST = 0;
  assign M_AXIS_DATA.TSTRB = 0;
  assign M_AXIS_DATA.TUSER = 0;

  fir_compiler_0 inst (
    .aclk(aclk),
    .s_axis_data_tvalid(S_AXIS_DATA.TVALID),
    .s_axis_data_tready(S_AXIS_DATA.TREADY),
    .s_axis_data_tdata(S_AXIS_DATA.TDATA),
    .m_axis_data_tvalid(M_AXIS_DATA.TVALID),
    .m_axis_data_tdata(M_AXIS_DATA.TDATA)
  );

endmodule
