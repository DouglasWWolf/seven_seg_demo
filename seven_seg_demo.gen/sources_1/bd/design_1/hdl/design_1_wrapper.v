//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Apr 26 19:00:12 2022
//Host        : DESKTOP-06LMOH5 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AN,
    BTNU,
    CLK100MHZ,
    CPU_RESETN,
    SEG);
  output [7:0]AN;
  input BTNU;
  input CLK100MHZ;
  input CPU_RESETN;
  output [7:0]SEG;

  wire [7:0]AN;
  wire BTNU;
  wire CLK100MHZ;
  wire CPU_RESETN;
  wire [7:0]SEG;

  design_1 design_1_i
       (.AN(AN),
        .BTNU(BTNU),
        .CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .SEG(SEG));
endmodule
