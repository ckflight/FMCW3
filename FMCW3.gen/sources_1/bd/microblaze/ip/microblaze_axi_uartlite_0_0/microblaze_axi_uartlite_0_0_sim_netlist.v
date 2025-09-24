// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Sep 13 20:48:31 2025
// Host        : ck-MS-7E62 running 64-bit Ubuntu 25.04
// Command     : write_verilog -force -mode funcsim -rename_top microblaze_axi_uartlite_0_0 -prefix
//               microblaze_axi_uartlite_0_0_ microblaze_axi_uartlite_0_0_sim_netlist.v
// Design      : microblaze_axi_uartlite_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tiftg256-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module microblaze_axi_uartlite_0_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    Bus_RNW_reg_reg_0,
    ip2bus_error,
    s_axi_aresetn_0,
    D,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    fifo_wr,
    bus2ip_wrce,
    reset_TX_FIFO,
    reset_RX_FIFO,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ,
    \addr_i_reg[4] ,
    bus2ip_rdce,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ,
    \s_axi_wdata[4] ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[2] ,
    start2,
    s_axi_aclk,
    tx_Buffer_Full,
    Q,
    s_axi_aresetn,
    tx_Buffer_Empty_Pre_reg,
    s_axi_rvalid_i_reg,
    state1__2,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_wdata,
    out,
    rx_Buffer_Full,
    enable_interrupts,
    status_reg_reg,
    \s_axi_rdata_i_reg[6] ,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_bready,
    s_axi_bvalid,
    bus2ip_rnw_i,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 );
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output Bus_RNW_reg_reg_0;
  output ip2bus_error;
  output s_axi_aresetn_0;
  output [2:0]D;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output fifo_wr;
  output [0:0]bus2ip_wrce;
  output reset_TX_FIFO;
  output reset_RX_FIFO;
  output [7:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ;
  output \addr_i_reg[4] ;
  output [0:0]bus2ip_rdce;
  output [0:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ;
  output \s_axi_wdata[4] ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[2] ;
  input start2;
  input s_axi_aclk;
  input tx_Buffer_Full;
  input [0:0]Q;
  input s_axi_aresetn;
  input [0:0]tx_Buffer_Empty_Pre_reg;
  input [3:0]s_axi_rvalid_i_reg;
  input state1__2;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [2:0]s_axi_wdata;
  input [7:0]out;
  input rx_Buffer_Full;
  input enable_interrupts;
  input status_reg_reg;
  input \s_axi_rdata_i_reg[6] ;
  input s_axi_rready;
  input s_axi_rvalid;
  input s_axi_bready;
  input s_axi_bvalid;
  input bus2ip_rnw_i;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 ;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 ;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire [2:0]D;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire [7:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire [0:0]Q;
  wire \addr_i_reg[4] ;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_rnw_i;
  wire [0:0]bus2ip_wrce;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire enable_interrupts;
  wire fifo_wr;
  wire ip2bus_error;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rx_Buffer_Full;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arvalid;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire \s_axi_rdata_i_reg[6] ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]s_axi_rvalid_i_reg;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire s_axi_wvalid;
  wire start2;
  wire state1__2;
  wire status_reg_reg;
  wire [0:0]tx_Buffer_Empty_Pre_reg;
  wire tx_Buffer_Full;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(start2),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_rvalid_i_reg[3]),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I2(s_axi_rvalid_i_reg[2]),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I4(state1__2),
        .I5(s_axi_rvalid_i_reg[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_rvalid_i_reg[1]),
        .I3(s_axi_arvalid),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I5(s_axi_rvalid_i_reg[2]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(s_axi_rvalid_i_reg[3]),
        .I2(s_axi_arvalid),
        .I3(s_axi_rvalid_i_reg[1]),
        .O(D[2]));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 ),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 ),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  microblaze_axi_uartlite_0_0_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  microblaze_axi_uartlite_0_0_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    clr_Status_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_reg[15][7]_srl16_i_1__0 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I2(tx_Buffer_Full),
        .O(fifo_wr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    enable_interrupts_i_1
       (.I0(s_axi_wdata[2]),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(enable_interrupts),
        .O(\s_axi_wdata[4] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    reset_RX_FIFO_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(s_axi_wdata[1]),
        .O(reset_RX_FIFO));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    reset_TX_FIFO_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(s_axi_wdata[0]),
        .O(reset_TX_FIFO));
  LUT4 #(
    .INIT(16'h0444)) 
    rx_Data_Present_Pre_i_1
       (.I0(Q),
        .I1(s_axi_aresetn),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(\addr_i_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    s_axi_arready_INST_0
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_bresp_i[1]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_wrce));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_bresp_i[1]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_rdce));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_bvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .I1(s_axi_rvalid_i_reg[2]),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5500C000)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(Q),
        .I1(out[0]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(rx_Buffer_Full),
        .I1(out[1]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [1]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(tx_Buffer_Empty_Pre_reg),
        .I1(out[2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [2]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(tx_Buffer_Full),
        .I1(out[3]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [3]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(enable_interrupts),
        .I1(out[4]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [4]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(status_reg_reg),
        .I1(out[5]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [5]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\s_axi_rdata_i_reg[6] ),
        .I1(out[6]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(out[7]),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0008888)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(tx_Buffer_Full),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I4(Bus_RNW_reg_reg_0),
        .O(ip2bus_error));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_rvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(s_axi_rvalid_i_reg[3]),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    s_axi_wready_INST_0
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h8088)) 
    tx_Buffer_Empty_Pre_i_1
       (.I0(s_axi_aresetn),
        .I1(tx_Buffer_Empty_Pre_reg),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .O(s_axi_aresetn_0));
endmodule

module microblaze_axi_uartlite_0_0_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aresetn_0,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    fifo_wr,
    reset_TX_FIFO,
    reset_RX_FIFO,
    \addr_i_reg[4] ,
    bus2ip_rdce,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    \s_axi_wdata[4] ,
    s_axi_bresp,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    tx_Buffer_Full,
    Q,
    s_axi_aresetn,
    tx_Buffer_Empty_Pre_reg,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_wdata,
    out,
    rx_Buffer_Full,
    enable_interrupts,
    status_reg_reg,
    \s_axi_rdata_i_reg[6] ,
    s_axi_rready,
    s_axi_bready,
    s_axi_araddr,
    s_axi_awaddr);
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_aresetn_0;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output fifo_wr;
  output reset_TX_FIFO;
  output reset_RX_FIFO;
  output \addr_i_reg[4] ;
  output [0:0]bus2ip_rdce;
  output [0:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output \s_axi_wdata[4] ;
  output [0:0]s_axi_bresp;
  output [7:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input tx_Buffer_Full;
  input [0:0]Q;
  input s_axi_aresetn;
  input [0:0]tx_Buffer_Empty_Pre_reg;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [2:0]s_axi_wdata;
  input [7:0]out;
  input rx_Buffer_Full;
  input enable_interrupts;
  input status_reg_reg;
  input \s_axi_rdata_i_reg[6] ;
  input s_axi_rready;
  input s_axi_bready;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [0:0]Q;
  wire \addr_i_reg[4] ;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_reset;
  wire enable_interrupts;
  wire fifo_wr;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rx_Buffer_Full;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[6] ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire s_axi_wvalid;
  wire status_reg_reg;
  wire [0:0]tx_Buffer_Empty_Pre_reg;
  wire tx_Buffer_Full;

  microblaze_axi_uartlite_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .Q(Q),
        .\addr_i_reg[4] (\addr_i_reg[4] ),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_reset(bus2ip_reset),
        .enable_interrupts(enable_interrupts),
        .fifo_wr(fifo_wr),
        .out(out),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx_Buffer_Full(rx_Buffer_Full),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[6]_0 (\s_axi_rdata_i_reg[6] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[4] (\s_axi_wdata[4] ),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_reg(status_reg_reg),
        .tx_Buffer_Empty_Pre_reg(tx_Buffer_Empty_Pre_reg),
        .tx_Buffer_Full(tx_Buffer_Full));
endmodule

(* C_BAUDRATE = "115200" *) (* C_DATA_BITS = "8" *) (* C_FAMILY = "artix7" *) 
(* C_ODD_PARITY = "0" *) (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) (* C_S_AXI_ADDR_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_USE_PARITY = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module microblaze_axi_uartlite_0_0_axi_uartlite
   (s_axi_aclk,
    s_axi_aresetn,
    interrupt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    rx,
    tx);
  input s_axi_aclk;
  input s_axi_aresetn;
  output interrupt;
  input [3:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input rx;
  output tx;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_12;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_6;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire UARTLITE_CORE_I_n_7;
  wire [4:4]\UARTLITE_RX_I/SRL_FIFO_I/addr_i_reg__0 ;
  wire \UARTLITE_TX_I/fifo_wr ;
  wire [1:1]bus2ip_rdce;
  wire [3:3]bus2ip_rdce__0;
  wire bus2ip_reset;
  wire enable_interrupts;
  wire interrupt;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rx;
  wire rx_Buffer_Full;
  wire [0:7]rx_Data;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire status_reg_reg;
  wire tx;
  wire tx_Buffer_Empty;
  wire tx_Buffer_Full;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  microblaze_axi_uartlite_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (s_axi_wready),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (bus2ip_rdce),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (s_axi_arready),
        .Q(\UARTLITE_RX_I/SRL_FIFO_I/addr_i_reg__0 ),
        .\addr_i_reg[4] (AXI_LITE_IPIF_I_n_12),
        .bus2ip_rdce(bus2ip_rdce__0),
        .bus2ip_reset(bus2ip_reset),
        .enable_interrupts(enable_interrupts),
        .fifo_wr(\UARTLITE_TX_I/fifo_wr ),
        .out({rx_Data[0],rx_Data[1],rx_Data[2],rx_Data[3],rx_Data[4],rx_Data[5],rx_Data[6],rx_Data[7]}),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx_Buffer_Full(rx_Buffer_Full),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(AXI_LITE_IPIF_I_n_6),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .\s_axi_rdata_i_reg[6] (UARTLITE_CORE_I_n_7),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[4],s_axi_wdata[1:0]}),
        .\s_axi_wdata[4] (AXI_LITE_IPIF_I_n_15),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_reg(status_reg_reg),
        .tx_Buffer_Empty_Pre_reg(tx_Buffer_Empty),
        .tx_Buffer_Full(tx_Buffer_Full));
  GND GND
       (.G(\<const0> ));
  microblaze_axi_uartlite_0_0_uartlite_core UARTLITE_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .Q(\UARTLITE_RX_I/SRL_FIFO_I/addr_i_reg__0 ),
        .\addr_i_reg[4] (tx_Buffer_Empty),
        .bus2ip_rdce(bus2ip_rdce__0),
        .bus2ip_reset(bus2ip_reset),
        .clr_Status_reg_0(bus2ip_rdce),
        .enable_interrupts(enable_interrupts),
        .enable_interrupts_reg_0(AXI_LITE_IPIF_I_n_15),
        .fifo_wr(\UARTLITE_TX_I/fifo_wr ),
        .interrupt(interrupt),
        .out({rx_Data[0],rx_Data[1],rx_Data[2],rx_Data[3],rx_Data[4],rx_Data[5],rx_Data[6],rx_Data[7]}),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx(rx),
        .rx_Buffer_Full(rx_Buffer_Full),
        .rx_Data_Present_Pre_reg_0(AXI_LITE_IPIF_I_n_12),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .status_reg_reg(status_reg_reg),
        .\status_reg_reg[1]_0 (UARTLITE_CORE_I_n_7),
        .tx(tx),
        .tx_Buffer_Empty_Pre_reg_0(AXI_LITE_IPIF_I_n_6),
        .tx_Buffer_Full(tx_Buffer_Full));
endmodule

module microblaze_axi_uartlite_0_0_baudrate
   (en_16x_Baud,
    SR,
    s_axi_aclk);
  output en_16x_Baud;
  input [0:0]SR;
  input s_axi_aclk;

  wire EN_16x_Baud_n_0;
  wire [0:0]SR;
  wire [5:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire en_16x_Baud;
  wire s_axi_aclk;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    EN_16x_Baud
       (.I0(count[4]),
        .I1(count[3]),
        .I2(count[5]),
        .I3(count[0]),
        .I4(count[1]),
        .I5(count[2]),
        .O(EN_16x_Baud_n_0));
  FDRE EN_16x_Baud_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EN_16x_Baud_n_0),
        .Q(en_16x_Baud),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \count[1]_i_1 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[4]),
        .I3(count[5]),
        .I4(count[1]),
        .I5(count[0]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F00E)) 
    \count[3]_i_1 
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[3]),
        .I3(count[2]),
        .I4(count[1]),
        .I5(count[0]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \count[4]_i_1 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[4]),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \count[5]_i_1 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[4]),
        .I5(count[5]),
        .O(\count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[3]_i_1_n_0 ),
        .Q(count[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[4]_i_1_n_0 ),
        .Q(count[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[5]_i_1_n_0 ),
        .Q(count[5]),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "microblaze_axi_uartlite_0_0,axi_uartlite,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_uartlite,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module microblaze_axi_uartlite_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    interrupt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    rx,
    tx);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* x_interface_mode = "slave ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_mode = "slave ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* x_interface_mode = "master INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY EDGE_RISING, PortWidth 1" *) output interrupt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN microblaze_clk_100MHz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) (* x_interface_mode = "master UART" *) (* x_interface_parameter = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UARTLITE_BOARD_INTERFACE" *) input rx;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output tx;

  wire \<const0> ;
  wire interrupt;
  wire rx;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire tx;
  wire [0:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:8]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BAUDRATE = "115200" *) 
  (* C_DATA_BITS = "8" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_ODD_PARITY = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_USE_PARITY = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  microblaze_axi_uartlite_0_0_axi_uartlite U0
       (.interrupt(interrupt),
        .rx(rx),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[3:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[3:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp({\^s_axi_bresp ,NLW_U0_s_axi_bresp_UNCONNECTED[0]}),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_U0_s_axi_rdata_UNCONNECTED[31:8],\^s_axi_rdata }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp({\^s_axi_rresp ,NLW_U0_s_axi_rresp_UNCONNECTED[0]}),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[7:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .tx(tx));
endmodule

module microblaze_axi_uartlite_0_0_pselect_f
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 );
  output ce_expnd_i_3;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module microblaze_axi_uartlite_0_0_pselect_f__parameterized1
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 );
  output ce_expnd_i_1;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;

  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .O(ce_expnd_i_1));
endmodule

module microblaze_axi_uartlite_0_0_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rresp,
    Bus_RNW_reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aresetn_0,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    fifo_wr,
    reset_TX_FIFO,
    reset_RX_FIFO,
    \addr_i_reg[4] ,
    bus2ip_rdce,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    \s_axi_wdata[4] ,
    s_axi_bresp,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    tx_Buffer_Full,
    Q,
    s_axi_aresetn,
    tx_Buffer_Empty_Pre_reg,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_wdata,
    out,
    rx_Buffer_Full,
    enable_interrupts,
    status_reg_reg,
    \s_axi_rdata_i_reg[6]_0 ,
    s_axi_rready,
    s_axi_bready,
    s_axi_araddr,
    s_axi_awaddr);
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_aresetn_0;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output fifo_wr;
  output reset_TX_FIFO;
  output reset_RX_FIFO;
  output \addr_i_reg[4] ;
  output [0:0]bus2ip_rdce;
  output [0:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output \s_axi_wdata[4] ;
  output [0:0]s_axi_bresp;
  output [7:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input tx_Buffer_Full;
  input [0:0]Q;
  input s_axi_aresetn;
  input [0:0]tx_Buffer_Empty_Pre_reg;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [2:0]s_axi_wdata;
  input [7:0]out;
  input rx_Buffer_Full;
  input enable_interrupts;
  input status_reg_reg;
  input \s_axi_rdata_i_reg[6]_0 ;
  input s_axi_rready;
  input s_axi_bready;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [7:0]IP2Bus_Data;
  wire I_DECODER_n_26;
  wire I_DECODER_n_27;
  wire I_DECODER_n_5;
  wire I_DECODER_n_6;
  wire I_DECODER_n_7;
  wire [0:0]Q;
  wire \addr_i_reg[4] ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_reset;
  wire bus2ip_rnw_i;
  wire bus2ip_rnw_i_i_1_n_0;
  wire [2:2]bus2ip_wrce;
  wire enable_interrupts;
  wire fifo_wr;
  wire ip2bus_error;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rst;
  wire rx_Buffer_Full;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire status_reg_reg;
  wire [0:0]tx_Buffer_Empty_Pre_reg;
  wire tx_Buffer_Full;

  LUT6 #(
    .INIT(64'hFFFF007000700070)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(s_axi_arvalid),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_7),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_6),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_5),
        .Q(s_axi_rresp_i),
        .R(rst));
  microblaze_axi_uartlite_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .D({I_DECODER_n_5,I_DECODER_n_6,I_DECODER_n_7}),
        .\FSM_onehot_state_reg[2] (I_DECODER_n_27),
        .\FSM_onehot_state_reg[3] (I_DECODER_n_26),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_1 (IP2Bus_Data),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_2 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_3 (\bus2ip_addr_i_reg_n_0_[3] ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_4 (\bus2ip_addr_i_reg_n_0_[2] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .Q(Q),
        .\addr_i_reg[4] (\addr_i_reg[4] ),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .bus2ip_wrce(bus2ip_wrce),
        .enable_interrupts(enable_interrupts),
        .fifo_wr(fifo_wr),
        .ip2bus_error(ip2bus_error),
        .out(out),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx_Buffer_Full(rx_Buffer_Full),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_rdata_i_reg[6] (\s_axi_rdata_i_reg[6]_0 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rvalid_i_reg({s_axi_rresp_i,s_axi_bresp_i,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[4] (\s_axi_wdata[4] ),
        .s_axi_wvalid(s_axi_wvalid),
        .start2(start2),
        .state1__2(state1__2),
        .status_reg_reg(status_reg_reg),
        .tx_Buffer_Empty_Pre_reg(tx_Buffer_Empty_Pre_reg),
        .tx_Buffer_Full(tx_Buffer_Full));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[0]),
        .I4(start2_i_1_n_0),
        .I5(\bus2ip_addr_i_reg_n_0_[2] ),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[1]),
        .I4(start2_i_1_n_0),
        .I5(\bus2ip_addr_i_reg_n_0_[3] ),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF7FFF000)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(bus2ip_rnw_i),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(tx_Buffer_Full),
        .I1(bus2ip_wrce),
        .I2(Q),
        .I3(bus2ip_rdce),
        .I4(s_axi_bresp_i),
        .I5(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_27),
        .Q(s_axi_bvalid),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_26),
        .Q(s_axi_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
endmodule

module microblaze_axi_uartlite_0_0_srl_fifo
   (tx_Buffer_Full,
    Q,
    mux_Out,
    tx_Start0,
    Interrupt0,
    s_axi_aclk,
    fifo_wr,
    fifo_Read,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    Bus_RNW_reg,
    serial_Data_reg,
    serial_Data_reg_0,
    p_5_in,
    \addr_i_reg[0]_0 ,
    s_axi_aresetn,
    tx_Start_reg,
    tx_DataBits,
    tx_Start,
    tx_Buffer_Empty_Pre,
    enable_interrupts,
    rx_Data_Present_Pre,
    Interrupt_reg,
    s_axi_wdata);
  output tx_Buffer_Full;
  output [0:0]Q;
  output mux_Out;
  output tx_Start0;
  output Interrupt0;
  input s_axi_aclk;
  input fifo_wr;
  input fifo_Read;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input Bus_RNW_reg;
  input serial_Data_reg;
  input serial_Data_reg_0;
  input p_5_in;
  input \addr_i_reg[0]_0 ;
  input s_axi_aresetn;
  input tx_Start_reg;
  input tx_DataBits;
  input tx_Start;
  input tx_Buffer_Empty_Pre;
  input enable_interrupts;
  input rx_Data_Present_Pre;
  input [0:0]Interrupt_reg;
  input [7:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire FIFO_Full_i_3__0_n_0;
  wire FIFO_Full_i_4__0_n_0;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire Interrupt0;
  wire [0:0]Interrupt_reg;
  wire [0:0]Q;
  wire TX_FIFO_Reset;
  wire [3:0]addr_i_p1;
  wire [4:4]addr_i_p1__0;
  wire [3:0]addr_i_reg;
  wire \addr_i_reg[0]_0 ;
  wire enable_interrupts;
  wire [0:7]fifo_DOut;
  wire fifo_Read;
  wire fifo_full_p1;
  wire fifo_wr;
  wire mux_0123;
  wire mux_4567;
  wire mux_Out;
  wire p_5_in;
  wire rx_Data_Present_Pre;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire serial_Data_reg;
  wire serial_Data_reg_0;
  wire tx_Buffer_Empty_Pre;
  wire tx_Buffer_Full;
  wire tx_DataBits;
  wire tx_Start;
  wire tx_Start0;
  wire tx_Start_reg;

  LUT2 #(
    .INIT(4'hB)) 
    FIFO_Full_i_1__0
       (.I0(\addr_i_reg[0]_0 ),
        .I1(s_axi_aresetn),
        .O(TX_FIFO_Reset));
  LUT5 #(
    .INIT(32'h02080820)) 
    FIFO_Full_i_2__0
       (.I0(FIFO_Full_i_3__0_n_0),
        .I1(addr_i_reg[3]),
        .I2(Q),
        .I3(FIFO_Full_i_4__0_n_0),
        .I4(addr_i_reg[2]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h5900A20000000004)) 
    FIFO_Full_i_3__0
       (.I0(fifo_wr),
        .I1(fifo_Read),
        .I2(Q),
        .I3(addr_i_reg[2]),
        .I4(addr_i_reg[0]),
        .I5(addr_i_reg[1]),
        .O(FIFO_Full_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hDF55555555555545)) 
    FIFO_Full_i_4__0
       (.I0(addr_i_reg[2]),
        .I1(Q),
        .I2(fifo_Read),
        .I3(fifo_wr),
        .I4(addr_i_reg[0]),
        .I5(addr_i_reg[1]),
        .O(FIFO_Full_i_4__0_n_0));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(tx_Buffer_Full),
        .R(TX_FIFO_Reset));
  LUT5 #(
    .INIT(32'h202020F0)) 
    Interrupt_i_2
       (.I0(Q),
        .I1(tx_Buffer_Empty_Pre),
        .I2(enable_interrupts),
        .I3(rx_Data_Present_Pre),
        .I4(Interrupt_reg),
        .O(Interrupt0));
  LUT6 #(
    .INIT(64'h9A9A9A9A9A659A9A)) 
    \addr_i[0]_i_1__0 
       (.I0(addr_i_reg[0]),
        .I1(Q),
        .I2(fifo_Read),
        .I3(tx_Buffer_Full),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(Bus_RNW_reg),
        .O(addr_i_p1[0]));
  LUT5 #(
    .INIT(32'h6C66C9CC)) 
    \addr_i[1]_i_1__0 
       (.I0(addr_i_reg[0]),
        .I1(addr_i_reg[1]),
        .I2(Q),
        .I3(fifo_Read),
        .I4(fifo_wr),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'h78F07878F0E1F0F0)) 
    \addr_i[2]_i_1__0 
       (.I0(addr_i_reg[1]),
        .I1(addr_i_reg[0]),
        .I2(addr_i_reg[2]),
        .I3(Q),
        .I4(fifo_Read),
        .I5(fifo_wr),
        .O(addr_i_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \addr_i[3]_i_1__0 
       (.I0(FIFO_Full_i_4__0_n_0),
        .I1(addr_i_reg[3]),
        .I2(addr_i_reg[2]),
        .O(addr_i_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \addr_i[4]_i_1__0 
       (.I0(addr_i_reg[2]),
        .I1(FIFO_Full_i_4__0_n_0),
        .I2(Q),
        .I3(addr_i_reg[3]),
        .O(addr_i_p1__0));
  FDSE \addr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(addr_i_reg[0]),
        .S(TX_FIFO_Reset));
  FDSE \addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(addr_i_reg[1]),
        .S(TX_FIFO_Reset));
  FDSE \addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(addr_i_reg[2]),
        .S(TX_FIFO_Reset));
  FDSE \addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(addr_i_reg[3]),
        .S(TX_FIFO_Reset));
  FDSE \addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1__0),
        .Q(Q),
        .S(TX_FIFO_Reset));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][0]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[7]),
        .Q(fifo_DOut[0]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][1]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[6]),
        .Q(fifo_DOut[1]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][2]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[5]),
        .Q(fifo_DOut[2]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][3]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[4]),
        .Q(fifo_DOut[3]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][4]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[3]),
        .Q(fifo_DOut[4]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][5]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[2]),
        .Q(fifo_DOut[5]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][6]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[1]),
        .Q(fifo_DOut[6]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][7]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[0]),
        .Q(fifo_DOut[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    serial_Data_i_2
       (.I0(fifo_DOut[1]),
        .I1(fifo_DOut[3]),
        .I2(fifo_DOut[0]),
        .I3(serial_Data_reg_0),
        .I4(p_5_in),
        .I5(fifo_DOut[2]),
        .O(mux_0123));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    serial_Data_i_3
       (.I0(fifo_DOut[5]),
        .I1(fifo_DOut[7]),
        .I2(fifo_DOut[4]),
        .I3(serial_Data_reg_0),
        .I4(p_5_in),
        .I5(fifo_DOut[6]),
        .O(mux_4567));
  MUXF7 serial_Data_reg_i_1
       (.I0(mux_0123),
        .I1(mux_4567),
        .O(mux_Out),
        .S(serial_Data_reg));
  LUT4 #(
    .INIT(16'h0F02)) 
    tx_Start_i_1
       (.I0(tx_Start_reg),
        .I1(Q),
        .I2(tx_DataBits),
        .I3(tx_Start),
        .O(tx_Start0));
endmodule

(* ORIG_REF_NAME = "srl_fifo" *) 
module microblaze_axi_uartlite_0_0_srl_fifo_0
   (FIFO_Full_reg_0,
    Q,
    s_axi_aresetn_0,
    out,
    s_axi_aclk,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    bus2ip_rdce,
    valid_rx,
    fifo_Write,
    s_axi_aresetn,
    status_reg_reg,
    clr_Status,
    \addr_i_reg[0]_0 ,
    in);
  output FIFO_Full_reg_0;
  output [0:0]Q;
  output s_axi_aresetn_0;
  output [7:0]out;
  input s_axi_aclk;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]bus2ip_rdce;
  input valid_rx;
  input fifo_Write;
  input s_axi_aresetn;
  input status_reg_reg;
  input clr_Status;
  input \addr_i_reg[0]_0 ;
  input [0:7]in;

  wire Bus_RNW_reg;
  wire FIFO_Full_i_3_n_0;
  wire FIFO_Full_i_5_n_0;
  wire FIFO_Full_reg_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]Q;
  wire RX_FIFO_Reset;
  wire \addr_i[4]_i_2_n_0 ;
  wire [4:4]addr_i_p1;
  wire addr_i_p111_out;
  wire [3:0]addr_i_p1_0;
  wire [3:0]addr_i_reg;
  wire \addr_i_reg[0]_0 ;
  wire [0:0]bus2ip_rdce;
  wire clr_Status;
  wire fifo_Write;
  wire fifo_full_p1;
  wire fifo_wr;
  wire [0:7]in;
  wire [7:0]out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire status_reg_reg;
  wire valid_rx;

  LUT2 #(
    .INIT(4'hB)) 
    FIFO_Full_i_1
       (.I0(\addr_i_reg[0]_0 ),
        .I1(s_axi_aresetn),
        .O(RX_FIFO_Reset));
  LUT6 #(
    .INIT(64'h0800000800200800)) 
    FIFO_Full_i_2
       (.I0(FIFO_Full_i_3_n_0),
        .I1(addr_i_reg[3]),
        .I2(Q),
        .I3(addr_i_reg[2]),
        .I4(addr_i_p111_out),
        .I5(FIFO_Full_i_5_n_0),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h2222822288881888)) 
    FIFO_Full_i_3
       (.I0(addr_i_reg[1]),
        .I1(fifo_wr),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(Q),
        .I5(addr_i_reg[0]),
        .O(FIFO_Full_i_3_n_0));
  LUT6 #(
    .INIT(64'h4040404000404040)) 
    FIFO_Full_i_4
       (.I0(Q),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(valid_rx),
        .I4(fifo_Write),
        .I5(FIFO_Full_reg_0),
        .O(addr_i_p111_out));
  LUT6 #(
    .INIT(64'h808888880E000000)) 
    FIFO_Full_i_5
       (.I0(addr_i_reg[0]),
        .I1(addr_i_reg[1]),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(fifo_wr),
        .O(FIFO_Full_i_5_n_0));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(RX_FIFO_Reset));
  LUT5 #(
    .INIT(32'h65559AAA)) 
    \addr_i[0]_i_1 
       (.I0(addr_i_reg[0]),
        .I1(Q),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(fifo_wr),
        .O(addr_i_p1_0[0]));
  LUT6 #(
    .INIT(64'h6C666666C9CCCCCC)) 
    \addr_i[1]_i_1 
       (.I0(addr_i_reg[0]),
        .I1(addr_i_reg[1]),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(fifo_wr),
        .O(addr_i_p1_0[1]));
  LUT6 #(
    .INIT(64'h78F07878F0E1F0F0)) 
    \addr_i[2]_i_1 
       (.I0(addr_i_reg[1]),
        .I1(addr_i_reg[0]),
        .I2(addr_i_reg[2]),
        .I3(Q),
        .I4(bus2ip_rdce),
        .I5(fifo_wr),
        .O(addr_i_p1_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \addr_i[3]_i_1 
       (.I0(\addr_i[4]_i_2_n_0 ),
        .I1(addr_i_reg[3]),
        .I2(addr_i_reg[2]),
        .O(addr_i_p1_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \addr_i[4]_i_1 
       (.I0(addr_i_reg[2]),
        .I1(\addr_i[4]_i_2_n_0 ),
        .I2(Q),
        .I3(addr_i_reg[3]),
        .O(addr_i_p1));
  LUT6 #(
    .INIT(64'hDF55555555555545)) 
    \addr_i[4]_i_2 
       (.I0(addr_i_reg[2]),
        .I1(Q),
        .I2(bus2ip_rdce),
        .I3(fifo_wr),
        .I4(addr_i_reg[0]),
        .I5(addr_i_reg[1]),
        .O(\addr_i[4]_i_2_n_0 ));
  FDSE \addr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1_0[0]),
        .Q(addr_i_reg[0]),
        .S(RX_FIFO_Reset));
  FDSE \addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1_0[1]),
        .Q(addr_i_reg[1]),
        .S(RX_FIFO_Reset));
  FDSE \addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1_0[2]),
        .Q(addr_i_reg[2]),
        .S(RX_FIFO_Reset));
  FDSE \addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1_0[3]),
        .Q(addr_i_reg[3]),
        .S(RX_FIFO_Reset));
  FDSE \addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1),
        .Q(Q),
        .S(RX_FIFO_Reset));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][0]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[0]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][1]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[1]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][2]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[2]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][3]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[3]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][4]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[4]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][5]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[5]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][6]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[6]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15] " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \data_reg[15][7]_srl16 
       (.A0(addr_i_reg[0]),
        .A1(addr_i_reg[1]),
        .A2(addr_i_reg[2]),
        .A3(addr_i_reg[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[7]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \data_reg[15][7]_srl16_i_1 
       (.I0(FIFO_Full_reg_0),
        .I1(fifo_Write),
        .I2(valid_rx),
        .O(fifo_wr));
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \status_reg[2]_i_1 
       (.I0(s_axi_aresetn),
        .I1(fifo_Write),
        .I2(FIFO_Full_reg_0),
        .I3(status_reg_reg),
        .I4(clr_Status),
        .O(s_axi_aresetn_0));
endmodule

module microblaze_axi_uartlite_0_0_uartlite_core
   (rx_Buffer_Full,
    tx_Buffer_Full,
    bus2ip_reset,
    tx,
    interrupt,
    enable_interrupts,
    status_reg_reg,
    \status_reg_reg[1]_0 ,
    Q,
    \addr_i_reg[4] ,
    out,
    rx,
    s_axi_aclk,
    clr_Status_reg_0,
    reset_TX_FIFO,
    reset_RX_FIFO,
    enable_interrupts_reg_0,
    tx_Buffer_Empty_Pre_reg_0,
    rx_Data_Present_Pre_reg_0,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    bus2ip_rdce,
    s_axi_aresetn,
    fifo_wr,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    s_axi_wdata);
  output rx_Buffer_Full;
  output tx_Buffer_Full;
  output bus2ip_reset;
  output tx;
  output interrupt;
  output enable_interrupts;
  output status_reg_reg;
  output \status_reg_reg[1]_0 ;
  output [0:0]Q;
  output [0:0]\addr_i_reg[4] ;
  output [7:0]out;
  input rx;
  input s_axi_aclk;
  input [0:0]clr_Status_reg_0;
  input reset_TX_FIFO;
  input reset_RX_FIFO;
  input enable_interrupts_reg_0;
  input tx_Buffer_Empty_Pre_reg_0;
  input rx_Data_Present_Pre_reg_0;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]bus2ip_rdce;
  input s_axi_aresetn;
  input fifo_wr;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input [7:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire Interrupt0;
  wire [0:0]Q;
  wire UARTLITE_RX_I_n_2;
  wire UARTLITE_RX_I_n_4;
  wire UARTLITE_RX_I_n_5;
  wire [0:0]\addr_i_reg[4] ;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_reset;
  wire clr_Status;
  wire [0:0]clr_Status_reg_0;
  wire en_16x_Baud;
  wire enable_interrupts;
  wire enable_interrupts_reg_0;
  wire fifo_wr;
  wire interrupt;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_RX_FIFO_reg_n_0;
  wire reset_TX_FIFO;
  wire reset_TX_FIFO_reg_n_0;
  wire rx;
  wire rx_Buffer_Full;
  wire rx_Data_Present_Pre;
  wire rx_Data_Present_Pre_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire status_reg_reg;
  wire \status_reg_reg[1]_0 ;
  wire tx;
  wire tx_Buffer_Empty_Pre;
  wire tx_Buffer_Empty_Pre_reg_0;
  wire tx_Buffer_Full;

  microblaze_axi_uartlite_0_0_baudrate BAUD_RATE_I
       (.SR(bus2ip_reset),
        .en_16x_Baud(en_16x_Baud),
        .s_axi_aclk(s_axi_aclk));
  FDRE Interrupt_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Interrupt0),
        .Q(interrupt),
        .R(bus2ip_reset));
  microblaze_axi_uartlite_0_0_uartlite_rx UARTLITE_RX_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .FIFO_Full_reg(rx_Buffer_Full),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q(Q),
        .SR(bus2ip_reset),
        .\addr_i_reg[0] (reset_RX_FIFO_reg_n_0),
        .bus2ip_rdce(bus2ip_rdce),
        .clr_Status(clr_Status),
        .clr_Status_reg(UARTLITE_RX_I_n_4),
        .data_shift_reg_r_12_0(UARTLITE_RX_I_n_2),
        .en_16x_Baud(en_16x_Baud),
        .out(out),
        .rx(rx),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(UARTLITE_RX_I_n_5),
        .status_reg_reg(status_reg_reg),
        .\status_reg_reg[1] (\status_reg_reg[1]_0 ));
  microblaze_axi_uartlite_0_0_uartlite_tx UARTLITE_TX_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .Interrupt0(Interrupt0),
        .Interrupt_reg(Q),
        .Q(\addr_i_reg[4] ),
        .SR(bus2ip_reset),
        .\addr_i_reg[0] (reset_TX_FIFO_reg_n_0),
        .\data_shift_reg[15]_0 (UARTLITE_RX_I_n_2),
        .en_16x_Baud(en_16x_Baud),
        .enable_interrupts(enable_interrupts),
        .fifo_wr(fifo_wr),
        .rx_Data_Present_Pre(rx_Data_Present_Pre),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .tx(tx),
        .tx_Buffer_Empty_Pre(tx_Buffer_Empty_Pre),
        .tx_Buffer_Full(tx_Buffer_Full));
  FDRE clr_Status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clr_Status_reg_0),
        .Q(clr_Status),
        .R(bus2ip_reset));
  FDRE enable_interrupts_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(enable_interrupts_reg_0),
        .Q(enable_interrupts),
        .R(bus2ip_reset));
  FDSE reset_RX_FIFO_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_RX_FIFO),
        .Q(reset_RX_FIFO_reg_n_0),
        .S(bus2ip_reset));
  FDSE reset_TX_FIFO_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_TX_FIFO),
        .Q(reset_TX_FIFO_reg_n_0),
        .S(bus2ip_reset));
  FDRE rx_Data_Present_Pre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_Data_Present_Pre_reg_0),
        .Q(rx_Data_Present_Pre),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(UARTLITE_RX_I_n_4),
        .Q(\status_reg_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(UARTLITE_RX_I_n_5),
        .Q(status_reg_reg),
        .R(1'b0));
  FDRE tx_Buffer_Empty_Pre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_Buffer_Empty_Pre_reg_0),
        .Q(tx_Buffer_Empty_Pre),
        .R(1'b0));
endmodule

module microblaze_axi_uartlite_0_0_uartlite_rx
   (FIFO_Full_reg,
    SR,
    data_shift_reg_r_12_0,
    Q,
    clr_Status_reg,
    s_axi_aresetn_0,
    out,
    rx,
    s_axi_aclk,
    en_16x_Baud,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    bus2ip_rdce,
    clr_Status,
    s_axi_aresetn,
    \status_reg_reg[1] ,
    status_reg_reg,
    \addr_i_reg[0] );
  output FIFO_Full_reg;
  output [0:0]SR;
  output data_shift_reg_r_12_0;
  output [0:0]Q;
  output clr_Status_reg;
  output s_axi_aresetn_0;
  output [7:0]out;
  input rx;
  input s_axi_aclk;
  input en_16x_Baud;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]bus2ip_rdce;
  input clr_Status;
  input s_axi_aresetn;
  input \status_reg_reg[1] ;
  input status_reg_reg;
  input \addr_i_reg[0] ;

  wire Bus_RNW_reg;
  wire FIFO_Full_reg;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]Q;
  wire RX_D2;
  wire \SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1_n_0 ;
  wire \SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2] ;
  wire \SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3] ;
  wire \SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4] ;
  wire \SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5] ;
  wire \SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6] ;
  wire \SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7] ;
  wire \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ;
  wire \SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8] ;
  wire [0:0]SR;
  wire \addr_i_reg[0] ;
  wire [0:0]bus2ip_rdce;
  wire clr_Status;
  wire clr_Status_reg;
  wire \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0 ;
  wire \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13_n_0 ;
  wire data_shift_reg_gate_n_0;
  wire data_shift_reg_r_0_n_0;
  wire data_shift_reg_r_10_n_0;
  wire data_shift_reg_r_11_n_0;
  wire data_shift_reg_r_12_0;
  wire data_shift_reg_r_13_n_0;
  wire data_shift_reg_r_1_n_0;
  wire data_shift_reg_r_2_n_0;
  wire data_shift_reg_r_3_n_0;
  wire data_shift_reg_r_4_n_0;
  wire data_shift_reg_r_5_n_0;
  wire data_shift_reg_r_6_n_0;
  wire data_shift_reg_r_7_n_0;
  wire data_shift_reg_r_8_n_0;
  wire data_shift_reg_r_9_n_0;
  wire data_shift_reg_r_n_0;
  wire en_16x_Baud;
  wire fifo_Write;
  wire fifo_Write0;
  wire frame_err_ocrd;
  wire frame_err_ocrd_i_1_n_0;
  wire [7:0]out;
  wire p_1_in;
  wire [0:0]p_1_out;
  wire running_i_1_n_0;
  wire running_reg_n_0;
  wire rx;
  wire rx_1;
  wire rx_2;
  wire rx_3;
  wire rx_4;
  wire rx_5;
  wire rx_6;
  wire rx_7;
  wire rx_8;
  wire rx_9;
  wire rx_Frame_Error;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire sample_Point;
  wire [2:8]serial_to_Par;
  wire start_Edge_Detected;
  wire start_Edge_Detected0;
  wire start_Edge_Detected_i_2_n_0;
  wire status_reg_reg;
  wire \status_reg_reg[1] ;
  wire stop_Bit_Position_i_1_n_0;
  wire stop_Bit_Position_reg_n_0;
  wire valid_rx;
  wire valid_rx_i_1_n_0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  microblaze_axi_uartlite_0_0_xpm_cdc_single INPUT_DOUBLE_REGS3
       (.dest_clk(s_axi_aclk),
        .dest_out(RX_D2),
        .src_clk(1'b0),
        .src_in(rx));
  LUT1 #(
    .INIT(2'h1)) 
    Interrupt_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFF4000)) 
    \SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1 
       (.I0(stop_Bit_Position_reg_n_0),
        .I1(sample_Point),
        .I2(RX_D2),
        .I3(en_16x_Baud),
        .I4(start_Edge_Detected),
        .I5(p_1_in),
        .O(\SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1_n_0 ));
  FDRE \SERIAL_TO_PARALLEL[1].fifo_din_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(SR));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SERIAL_TO_PARALLEL[2].fifo_din[2]_i_1 
       (.I0(\SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2] ),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(sample_Point),
        .I3(p_1_in),
        .O(serial_to_Par[2]));
  FDRE \SERIAL_TO_PARALLEL[2].fifo_din_reg[2] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(serial_to_Par[2]),
        .Q(\SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2] ),
        .R(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SERIAL_TO_PARALLEL[3].fifo_din[3]_i_1 
       (.I0(\SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3] ),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(sample_Point),
        .I3(\SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2] ),
        .O(serial_to_Par[3]));
  FDRE \SERIAL_TO_PARALLEL[3].fifo_din_reg[3] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(serial_to_Par[3]),
        .Q(\SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3] ),
        .R(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SERIAL_TO_PARALLEL[4].fifo_din[4]_i_1 
       (.I0(\SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4] ),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(sample_Point),
        .I3(\SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3] ),
        .O(serial_to_Par[4]));
  FDRE \SERIAL_TO_PARALLEL[4].fifo_din_reg[4] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(serial_to_Par[4]),
        .Q(\SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4] ),
        .R(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SERIAL_TO_PARALLEL[5].fifo_din[5]_i_1 
       (.I0(\SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5] ),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(sample_Point),
        .I3(\SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4] ),
        .O(serial_to_Par[5]));
  FDRE \SERIAL_TO_PARALLEL[5].fifo_din_reg[5] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(serial_to_Par[5]),
        .Q(\SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5] ),
        .R(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SERIAL_TO_PARALLEL[6].fifo_din[6]_i_1 
       (.I0(\SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6] ),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(sample_Point),
        .I3(\SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5] ),
        .O(serial_to_Par[6]));
  FDRE \SERIAL_TO_PARALLEL[6].fifo_din_reg[6] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(serial_to_Par[6]),
        .Q(\SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6] ),
        .R(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SERIAL_TO_PARALLEL[7].fifo_din[7]_i_1 
       (.I0(\SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7] ),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(sample_Point),
        .I3(\SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6] ),
        .O(serial_to_Par[7]));
  FDRE \SERIAL_TO_PARALLEL[7].fifo_din_reg[7] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(serial_to_Par[7]),
        .Q(\SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7] ),
        .R(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1 
       (.I0(start_Edge_Detected),
        .I1(s_axi_aresetn),
        .O(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_2 
       (.I0(\SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8] ),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(sample_Point),
        .I3(\SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7] ),
        .O(serial_to_Par[8]));
  FDRE \SERIAL_TO_PARALLEL[8].fifo_din_reg[8] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(serial_to_Par[8]),
        .Q(\SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8] ),
        .R(\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1_n_0 ));
  microblaze_axi_uartlite_0_0_srl_fifo_0 SRL_FIFO_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .FIFO_Full_reg_0(FIFO_Full_reg),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q(Q),
        .\addr_i_reg[0]_0 (\addr_i_reg[0] ),
        .bus2ip_rdce(bus2ip_rdce),
        .clr_Status(clr_Status),
        .fifo_Write(fifo_Write),
        .in({p_1_in,\SERIAL_TO_PARALLEL[2].fifo_din_reg_n_0_[2] ,\SERIAL_TO_PARALLEL[3].fifo_din_reg_n_0_[3] ,\SERIAL_TO_PARALLEL[4].fifo_din_reg_n_0_[4] ,\SERIAL_TO_PARALLEL[5].fifo_din_reg_n_0_[5] ,\SERIAL_TO_PARALLEL[6].fifo_din_reg_n_0_[6] ,\SERIAL_TO_PARALLEL[7].fifo_din_reg_n_0_[7] ,\SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8] }),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .status_reg_reg(status_reg_reg),
        .valid_rx(valid_rx));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/data_shift_reg " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_RX_I/data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12 " *) 
  SRL16E \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(en_16x_Baud),
        .CLK(s_axi_aclk),
        .D(p_1_out),
        .Q(\data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_i_1 
       (.I0(stop_Bit_Position_reg_n_0),
        .I1(valid_rx),
        .I2(sample_Point),
        .I3(start_Edge_Detected),
        .O(p_1_out));
  FDRE \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(\data_shift_reg[13]_srl14___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0 ),
        .Q(\data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13_n_0 ),
        .R(1'b0));
  FDRE \data_shift_reg[15] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_gate_n_0),
        .Q(sample_Point),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    data_shift_reg_gate
       (.I0(\data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_13_n_0 ),
        .I1(data_shift_reg_r_13_n_0),
        .O(data_shift_reg_gate_n_0));
  FDRE data_shift_reg_r
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(1'b1),
        .Q(data_shift_reg_r_n_0),
        .R(SR));
  FDRE data_shift_reg_r_0
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_n_0),
        .Q(data_shift_reg_r_0_n_0),
        .R(SR));
  FDRE data_shift_reg_r_1
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_0_n_0),
        .Q(data_shift_reg_r_1_n_0),
        .R(SR));
  FDRE data_shift_reg_r_10
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_9_n_0),
        .Q(data_shift_reg_r_10_n_0),
        .R(SR));
  FDRE data_shift_reg_r_11
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_10_n_0),
        .Q(data_shift_reg_r_11_n_0),
        .R(SR));
  FDRE data_shift_reg_r_12
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_11_n_0),
        .Q(data_shift_reg_r_12_0),
        .R(SR));
  FDRE data_shift_reg_r_13
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_12_0),
        .Q(data_shift_reg_r_13_n_0),
        .R(SR));
  FDRE data_shift_reg_r_2
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_1_n_0),
        .Q(data_shift_reg_r_2_n_0),
        .R(SR));
  FDRE data_shift_reg_r_3
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_2_n_0),
        .Q(data_shift_reg_r_3_n_0),
        .R(SR));
  FDRE data_shift_reg_r_4
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_3_n_0),
        .Q(data_shift_reg_r_4_n_0),
        .R(SR));
  FDRE data_shift_reg_r_5
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_4_n_0),
        .Q(data_shift_reg_r_5_n_0),
        .R(SR));
  FDRE data_shift_reg_r_6
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_5_n_0),
        .Q(data_shift_reg_r_6_n_0),
        .R(SR));
  FDRE data_shift_reg_r_7
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_6_n_0),
        .Q(data_shift_reg_r_7_n_0),
        .R(SR));
  FDRE data_shift_reg_r_8
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_7_n_0),
        .Q(data_shift_reg_r_8_n_0),
        .R(SR));
  FDRE data_shift_reg_r_9
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_r_8_n_0),
        .Q(data_shift_reg_r_9_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    fifo_Write_i_1
       (.I0(RX_D2),
        .I1(en_16x_Baud),
        .I2(stop_Bit_Position_reg_n_0),
        .I3(sample_Point),
        .O(fifo_Write0));
  FDRE fifo_Write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_Write0),
        .Q(fifo_Write),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00FF0080)) 
    frame_err_ocrd_i_1
       (.I0(sample_Point),
        .I1(stop_Bit_Position_reg_n_0),
        .I2(en_16x_Baud),
        .I3(RX_D2),
        .I4(frame_err_ocrd),
        .O(frame_err_ocrd_i_1_n_0));
  FDRE frame_err_ocrd_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(frame_err_ocrd_i_1_n_0),
        .Q(frame_err_ocrd),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFFAA00)) 
    running_i_1
       (.I0(start_Edge_Detected),
        .I1(sample_Point),
        .I2(stop_Bit_Position_reg_n_0),
        .I3(en_16x_Baud),
        .I4(running_reg_n_0),
        .O(running_i_1_n_0));
  FDRE running_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(running_i_1_n_0),
        .Q(running_reg_n_0),
        .R(SR));
  FDRE rx_1_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(RX_D2),
        .Q(rx_1),
        .R(SR));
  FDRE rx_2_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_1),
        .Q(rx_2),
        .R(SR));
  FDRE rx_3_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_2),
        .Q(rx_3),
        .R(SR));
  FDRE rx_4_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_3),
        .Q(rx_4),
        .R(SR));
  FDRE rx_5_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_4),
        .Q(rx_5),
        .R(SR));
  FDRE rx_6_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_5),
        .Q(rx_6),
        .R(SR));
  FDRE rx_7_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_6),
        .Q(rx_7),
        .R(SR));
  FDRE rx_8_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_7),
        .Q(rx_8),
        .R(SR));
  FDRE rx_9_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_8),
        .Q(rx_9),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    start_Edge_Detected_i_1
       (.I0(rx_7),
        .I1(rx_5),
        .I2(start_Edge_Detected_i_2_n_0),
        .I3(rx_4),
        .I4(rx_6),
        .I5(frame_err_ocrd),
        .O(start_Edge_Detected0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    start_Edge_Detected_i_2
       (.I0(running_reg_n_0),
        .I1(rx_8),
        .I2(rx_2),
        .I3(rx_3),
        .I4(rx_1),
        .I5(rx_9),
        .O(start_Edge_Detected_i_2_n_0));
  FDRE start_Edge_Detected_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(start_Edge_Detected0),
        .Q(start_Edge_Detected),
        .R(SR));
  LUT4 #(
    .INIT(16'h4440)) 
    \status_reg[1]_i_1 
       (.I0(clr_Status),
        .I1(s_axi_aresetn),
        .I2(\status_reg_reg[1] ),
        .I3(rx_Frame_Error),
        .O(clr_Status_reg));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \status_reg[1]_i_2 
       (.I0(RX_D2),
        .I1(en_16x_Baud),
        .I2(stop_Bit_Position_reg_n_0),
        .I3(sample_Point),
        .O(rx_Frame_Error));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h38F0)) 
    stop_Bit_Position_i_1
       (.I0(\SERIAL_TO_PARALLEL[8].fifo_din_reg_n_0_[8] ),
        .I1(sample_Point),
        .I2(stop_Bit_Position_reg_n_0),
        .I3(en_16x_Baud),
        .O(stop_Bit_Position_i_1_n_0));
  FDRE stop_Bit_Position_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stop_Bit_Position_i_1_n_0),
        .Q(stop_Bit_Position_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    valid_rx_i_1
       (.I0(start_Edge_Detected),
        .I1(fifo_Write),
        .I2(valid_rx),
        .O(valid_rx_i_1_n_0));
  FDRE valid_rx_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(valid_rx_i_1_n_0),
        .Q(valid_rx),
        .R(SR));
endmodule

module microblaze_axi_uartlite_0_0_uartlite_tx
   (tx_Buffer_Full,
    tx,
    Q,
    Interrupt0,
    s_axi_aclk,
    SR,
    en_16x_Baud,
    \data_shift_reg[15]_0 ,
    fifo_wr,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    Bus_RNW_reg,
    \addr_i_reg[0] ,
    s_axi_aresetn,
    tx_Buffer_Empty_Pre,
    enable_interrupts,
    rx_Data_Present_Pre,
    Interrupt_reg,
    s_axi_wdata);
  output tx_Buffer_Full;
  output tx;
  output [0:0]Q;
  output Interrupt0;
  input s_axi_aclk;
  input [0:0]SR;
  input en_16x_Baud;
  input \data_shift_reg[15]_0 ;
  input fifo_wr;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input Bus_RNW_reg;
  input \addr_i_reg[0] ;
  input s_axi_aresetn;
  input tx_Buffer_Empty_Pre;
  input enable_interrupts;
  input rx_Data_Present_Pre;
  input [0:0]Interrupt_reg;
  input [7:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire Interrupt0;
  wire [0:0]Interrupt_reg;
  wire [0:0]Q;
  wire [0:0]SR;
  wire TX0;
  wire \addr_i_reg[0] ;
  wire \data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11_n_0 ;
  wire \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0 ;
  wire \data_shift_reg[15]_0 ;
  wire data_shift_reg_gate_n_0;
  wire \data_shift_reg_n_0_[0] ;
  wire div16;
  wire en_16x_Baud;
  wire enable_interrupts;
  wire fifo_Read;
  wire fifo_Read0;
  wire fifo_wr;
  wire mux_Out;
  wire \mux_sel[0]_i_1_n_0 ;
  wire \mux_sel[1]_i_1_n_0 ;
  wire \mux_sel[2]_i_1_n_0 ;
  wire \mux_sel_reg_n_0_[0] ;
  wire \mux_sel_reg_n_0_[2] ;
  wire p_5_in;
  wire rx_Data_Present_Pre;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire serial_Data;
  wire tx;
  wire tx_Buffer_Empty_Pre;
  wire tx_Buffer_Full;
  wire tx_DataBits;
  wire tx_DataBits0;
  wire tx_Data_Enable_i_1_n_0;
  wire tx_Data_Enable_reg_n_0;
  wire tx_Start;
  wire tx_Start0;

  microblaze_axi_uartlite_0_0_srl_fifo SRL_FIFO_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .Interrupt0(Interrupt0),
        .Interrupt_reg(Interrupt_reg),
        .Q(Q),
        .\addr_i_reg[0]_0 (\addr_i_reg[0] ),
        .enable_interrupts(enable_interrupts),
        .fifo_Read(fifo_Read),
        .fifo_wr(fifo_wr),
        .mux_Out(mux_Out),
        .p_5_in(p_5_in),
        .rx_Data_Present_Pre(rx_Data_Present_Pre),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .serial_Data_reg(\mux_sel_reg_n_0_[0] ),
        .serial_Data_reg_0(\mux_sel_reg_n_0_[2] ),
        .tx_Buffer_Empty_Pre(tx_Buffer_Empty_Pre),
        .tx_Buffer_Full(tx_Buffer_Full),
        .tx_DataBits(tx_DataBits),
        .tx_Start(tx_Start),
        .tx_Start0(tx_Start0),
        .tx_Start_reg(tx_Data_Enable_reg_n_0));
  LUT3 #(
    .INIT(8'h0B)) 
    TX_i_1
       (.I0(serial_Data),
        .I1(tx_DataBits),
        .I2(tx_Start),
        .O(TX0));
  FDSE TX_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TX0),
        .Q(tx),
        .S(SR));
  FDSE \data_shift_reg[0] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(div16),
        .Q(\data_shift_reg_n_0_[0] ),
        .S(SR));
  (* srl_bus_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/data_shift_reg " *) 
  (* srl_name = "U0/\\UARTLITE_CORE_I/UARTLITE_TX_I/data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11 " *) 
  SRL16E \data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(en_16x_Baud),
        .CLK(s_axi_aclk),
        .D(\data_shift_reg_n_0_[0] ),
        .Q(\data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11_n_0 ));
  FDRE \data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(\data_shift_reg[13]_srl13___UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_11_n_0 ),
        .Q(\data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0 ),
        .R(1'b0));
  FDRE \data_shift_reg[15] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(data_shift_reg_gate_n_0),
        .Q(div16),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    data_shift_reg_gate
       (.I0(\data_shift_reg[14]_UARTLITE_CORE_I_UARTLITE_RX_I_data_shift_reg_r_12_n_0 ),
        .I1(\data_shift_reg[15]_0 ),
        .O(data_shift_reg_gate_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    fifo_Read_i_1
       (.I0(tx_Data_Enable_reg_n_0),
        .I1(\mux_sel_reg_n_0_[0] ),
        .I2(p_5_in),
        .I3(\mux_sel_reg_n_0_[2] ),
        .O(fifo_Read0));
  FDRE fifo_Read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_Read0),
        .Q(fifo_Read),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hE1F1F0F0)) 
    \mux_sel[0]_i_1 
       (.I0(\mux_sel_reg_n_0_[2] ),
        .I1(p_5_in),
        .I2(\mux_sel_reg_n_0_[0] ),
        .I3(tx_DataBits),
        .I4(tx_Data_Enable_reg_n_0),
        .O(\mux_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h99CDCCCC)) 
    \mux_sel[1]_i_1 
       (.I0(\mux_sel_reg_n_0_[2] ),
        .I1(p_5_in),
        .I2(\mux_sel_reg_n_0_[0] ),
        .I3(tx_DataBits),
        .I4(tx_Data_Enable_reg_n_0),
        .O(\mux_sel[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55ABAAAA)) 
    \mux_sel[2]_i_1 
       (.I0(\mux_sel_reg_n_0_[2] ),
        .I1(p_5_in),
        .I2(\mux_sel_reg_n_0_[0] ),
        .I3(tx_DataBits),
        .I4(tx_Data_Enable_reg_n_0),
        .O(\mux_sel[2]_i_1_n_0 ));
  FDSE \mux_sel_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mux_sel[0]_i_1_n_0 ),
        .Q(\mux_sel_reg_n_0_[0] ),
        .S(SR));
  FDSE \mux_sel_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mux_sel[1]_i_1_n_0 ),
        .Q(p_5_in),
        .S(SR));
  FDSE \mux_sel_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mux_sel[2]_i_1_n_0 ),
        .Q(\mux_sel_reg_n_0_[2] ),
        .S(SR));
  FDRE serial_Data_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mux_Out),
        .Q(serial_Data),
        .R(SR));
  LUT4 #(
    .INIT(16'h0F08)) 
    tx_DataBits_i_1
       (.I0(tx_Start),
        .I1(tx_Data_Enable_reg_n_0),
        .I2(fifo_Read),
        .I3(tx_DataBits),
        .O(tx_DataBits0));
  FDRE tx_DataBits_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_DataBits0),
        .Q(tx_DataBits),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    tx_Data_Enable_i_1
       (.I0(div16),
        .I1(tx_Data_Enable_reg_n_0),
        .I2(en_16x_Baud),
        .O(tx_Data_Enable_i_1_n_0));
  FDRE tx_Data_Enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_Data_Enable_i_1_n_0),
        .Q(tx_Data_Enable_reg_n_0),
        .R(SR));
  FDRE tx_Start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_Start0),
        .Q(tx_Start),
        .R(SR));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module microblaze_axi_uartlite_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
