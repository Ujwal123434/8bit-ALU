`timescale 1ns / 1ps
module alu(a,b,y,s,carry,zero,sign,overflow);
 input  [7:0]  a,b;
 input  [2:0]  s;
 output reg [15:0] y;
 output reg carry;
 output reg zero;
 output reg sign;
output reg overflow;
always @(*) begin
    y        = 16'b0;
    carry    = 1'b0;
    zero     = 1'b0;
    sign     = 1'b0;
    overflow = 1'b0;
    case(s)
    3'd0: begin
      {carry, y[7:0]} = {1'b0, a} + {1'b0, b};
         overflow = (~a[7] & ~b[7] &  y[7]) | ( a[7] &  b[7] & ~y[7]);
         end
         3'd1: begin
            {carry, y[7:0]} = {1'b0, a} - {1'b0, b};
            overflow = (~a[7] &  b[7] &  y[7]) | ( a[7] & ~b[7] & ~y[7]);  
        end
  3'd2: begin
            y[7:0] = ~a;
        end
         3'd3: begin
            y        = a * b;        
            carry    = |y[15:8];      
            overflow = |y[15:8];       
        end
   3'd4: y[7:0] = a & b;
   3'd5: y[7:0] = a | b;
   3'd6: y[7:0] = ~(a & b);
   3'd7: y[7:0] = a ^ b;
   default:;
    endcase 
    zero = ~|y; 
    sign =  y[7];
end
endmodule