//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Wed Aug  4 21:08:41 2021
//Host        : DESKTOP-9PMV8VL running 64-bit major release  (build 9200)
//Command     : generate_target mb1_wrapper.bd
//Design      : mb1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb1_wrapper
   (CLK100MHZ,
    gpio_rtl_0_tri_io,
    reset_rtl_0,
    uart_rtl_0_rxd,
    uart_rtl_0_txd);
    
    
  //input clk_100;
  input CLK100MHZ;
  
  inout [0:0]gpio_rtl_0_tri_io;
  input reset_rtl_0;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;

  //wire clk_100;
  wire CLK100MHZ;
  
  wire [0:0]gpio_rtl_0_tri_i_0;
  wire [0:0]gpio_rtl_0_tri_io_0;
  wire [0:0]gpio_rtl_0_tri_o_0;
  wire [0:0]gpio_rtl_0_tri_t_0;
  wire reset_rtl_0;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;

  IOBUF gpio_rtl_0_tri_iobuf_0
       (.I(gpio_rtl_0_tri_o_0),
        .IO(gpio_rtl_0_tri_io[0]),
        .O(gpio_rtl_0_tri_i_0),
        .T(gpio_rtl_0_tri_t_0));
  mb1 mb1_i
       (.clk_100(CLK100MHZ),
        .gpio_rtl_0_tri_i(gpio_rtl_0_tri_i_0),
        .gpio_rtl_0_tri_o(gpio_rtl_0_tri_o_0),
        .gpio_rtl_0_tri_t(gpio_rtl_0_tri_t_0),
        .reset_rtl_0(reset_rtl_0),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd));
endmodule
