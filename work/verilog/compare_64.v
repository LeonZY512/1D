/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_64 (
    input clk,
    input rst,
    input [5:0] alufn,
    input z,
    input n,
    input v,
    output reg [7:0] out
  );
  
  
  
  reg [7:0] x;
  
  integer i;
  
  always @* begin
    out = 8'h00;
    
    case (alufn[0+2-:3])
      3'h3: begin
        x[0+0-:1] = z;
        for (i = 1'h1; i < 4'h8; i = i + 1) begin
          x[(i)*1+0-:1] = 1'h0;
        end
        out = x;
      end
      3'h5: begin
        x[0+0-:1] = n ^ v;
        for (i = 1'h1; i < 4'h8; i = i + 1) begin
          x[(i)*1+0-:1] = 1'h0;
        end
        out = x;
      end
      3'h7: begin
        x[0+0-:1] = z | (n ^ v);
        for (i = 1'h1; i < 4'h8; i = i + 1) begin
          x[(i)*1+0-:1] = 1'h0;
        end
        out = x;
      end
    endcase
  end
endmodule
