/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_65 (
    input clk,
    input rst_n,
    input [5:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out
  );
  
  
  
  always @* begin
    out = 8'h00;
    
    case (alufn[0+3-:4])
      4'h8: begin
        out = a & b;
      end
      4'he: begin
        out = a | b;
      end
      4'h6: begin
        out = a ^ b;
      end
      4'h9: begin
        out = ~(a ^ b);
      end
      4'h7: begin
        out = ~(a & b);
      end
      4'h1: begin
        out = ~(a | b);
      end
    endcase
  end
endmodule
