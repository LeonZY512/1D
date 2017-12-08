/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_24 (
    input clk,
    input rst,
    input [5:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] alu
  );
  
  
  
  wire [8-1:0] M_adder1_sum;
  wire [1-1:0] M_adder1_z;
  wire [1-1:0] M_adder1_v;
  wire [1-1:0] M_adder1_n;
  wire [8-1:0] M_adder1_led;
  reg [1-1:0] M_adder1_clk;
  reg [1-1:0] M_adder1_rst_n;
  reg [6-1:0] M_adder1_alufn;
  reg [8-1:0] M_adder1_a;
  reg [8-1:0] M_adder1_b;
  adder_63 adder1 (
    .clk(M_adder1_clk),
    .rst_n(M_adder1_rst_n),
    .alufn(M_adder1_alufn),
    .a(M_adder1_a),
    .b(M_adder1_b),
    .sum(M_adder1_sum),
    .z(M_adder1_z),
    .v(M_adder1_v),
    .n(M_adder1_n),
    .led(M_adder1_led)
  );
  
  wire [8-1:0] M_compare1_out;
  reg [1-1:0] M_compare1_clk;
  reg [1-1:0] M_compare1_rst;
  reg [6-1:0] M_compare1_alufn;
  reg [1-1:0] M_compare1_z;
  reg [1-1:0] M_compare1_n;
  reg [1-1:0] M_compare1_v;
  compare_64 compare1 (
    .clk(M_compare1_clk),
    .rst(M_compare1_rst),
    .alufn(M_compare1_alufn),
    .z(M_compare1_z),
    .n(M_compare1_n),
    .v(M_compare1_v),
    .out(M_compare1_out)
  );
  
  wire [8-1:0] M_boolean1_out;
  reg [1-1:0] M_boolean1_clk;
  reg [1-1:0] M_boolean1_rst_n;
  reg [6-1:0] M_boolean1_alufn;
  reg [8-1:0] M_boolean1_a;
  reg [8-1:0] M_boolean1_b;
  boolean_65 boolean1 (
    .clk(M_boolean1_clk),
    .rst_n(M_boolean1_rst_n),
    .alufn(M_boolean1_alufn),
    .a(M_boolean1_a),
    .b(M_boolean1_b),
    .out(M_boolean1_out)
  );
  
  wire [8-1:0] M_shifter1_out;
  reg [1-1:0] M_shifter1_clk;
  reg [1-1:0] M_shifter1_rst;
  reg [6-1:0] M_shifter1_alufn;
  reg [8-1:0] M_shifter1_a;
  reg [8-1:0] M_shifter1_b;
  shifter_66 shifter1 (
    .clk(M_shifter1_clk),
    .rst(M_shifter1_rst),
    .alufn(M_shifter1_alufn),
    .a(M_shifter1_a),
    .b(M_shifter1_b),
    .out(M_shifter1_out)
  );
  
  reg [7:0] sumtemp;
  
  reg z;
  
  reg v;
  
  reg n;
  
  always @* begin
    M_adder1_clk = clk;
    M_adder1_rst_n = rst;
    M_adder1_a = a;
    M_adder1_b = b;
    M_adder1_alufn = alufn;
    M_compare1_clk = clk;
    M_compare1_rst = rst;
    M_compare1_alufn = alufn;
    M_compare1_v = M_adder1_v;
    M_compare1_n = M_adder1_n;
    M_compare1_z = M_adder1_z;
    M_boolean1_clk = clk;
    M_boolean1_rst_n = rst;
    M_boolean1_a = a;
    M_boolean1_b = b;
    M_boolean1_alufn = alufn;
    M_shifter1_clk = clk;
    M_shifter1_rst = rst;
    M_shifter1_a = a;
    M_shifter1_b = b;
    M_shifter1_alufn = alufn;
    
    case (alufn[4+1-:2])
      2'h0: begin
        alu = M_adder1_sum;
      end
      2'h1: begin
        alu = M_boolean1_out;
      end
      2'h2: begin
        alu = M_shifter1_out;
      end
      2'h3: begin
        alu = M_compare1_out;
      end
      default: begin
        alu = 8'h00;
      end
    endcase
  end
endmodule
