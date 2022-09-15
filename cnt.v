/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Aug 24 11:00:18 2022
/////////////////////////////////////////////////////////////


module cnt ( clk, rst_n, cnt );
  output [1:0] cnt;
  input clk, rst_n;

  wire   [1:0] cnt_n;

  DFCNQD4BWP12T35P140LVT cnt_reg_1_ ( .D(cnt_n[1]), .CP(clk), .CDN(rst_n), .Q(
        cnt[1]) );
  DFCNQD4BWP12T35P140LVT cnt_reg_0_ ( .D(cnt_n[0]), .CP(clk), .CDN(rst_n), .Q(
        cnt[0]) );
  NR2D2BWP12T35P140LVT U5 ( .A1(cnt[0]), .A2(cnt[1]), .ZN(cnt_n[0]) );
  INR2D2BWP12T35P140LVT U6 ( .A1(cnt[0]), .B1(cnt[1]), .ZN(cnt_n[1]) );
endmodule

