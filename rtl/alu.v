//Design 8-bit ALU
module alu(
   input [7:0] a,
   input [7:0] b,
   input [2:0] s,
   output reg [15:0] y
);

always @(*) begin
 y = 16'b0; // Default zero to avoid latches
  case(s)
    3'd0: y = a+b;
    3'd1: y = a-b;
    3'd2: y = ~a;
    3'd3: y = a*b;
    3'd4: y = a&b;
    3'd5: y = a|b;
    3'd6: y = ~(a&b);
    3'd7: y = a^b;
    default:;
  endcase
end
endmodule
   