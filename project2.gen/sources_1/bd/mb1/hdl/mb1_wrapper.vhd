--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Wed Aug  4 22:04:03 2021
--Host        : DESKTOP-9PMV8VL running 64-bit major release  (build 9200)
--Command     : generate_target mb1_wrapper.bd
--Design      : mb1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb1_wrapper is
  port (
    clk_100 : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_rtl_0 : in STD_LOGIC;
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC
  );
end mb1_wrapper;

architecture STRUCTURE of mb1_wrapper is
  component mb1 is
  port (
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    clk_100 : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mb1;
begin
mb1_i: component mb1
     port map (
      clk_100 => clk_100,
      gpio_rtl_0_tri_o(0) => gpio_rtl_0_tri_o(0),
      reset_rtl_0 => reset_rtl_0,
      uart_rtl_0_rxd => uart_rtl_0_rxd,
      uart_rtl_0_txd => uart_rtl_0_txd
    );
end STRUCTURE;
