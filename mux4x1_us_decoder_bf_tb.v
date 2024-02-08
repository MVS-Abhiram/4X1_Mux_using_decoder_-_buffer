`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 15:41:00
// Design Name: 
// Module Name: mux4x1_us_decoder_bf_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4x1_us_decoder_bf_tb();
reg a,b;
reg [3:0]i;
wire [3:0]y;
wire out;
integer j;
// Module instantiation
mux4x1_us_decode_tribuf uut (.a(a),.b(b),.y(y),.i(i),.out(out));
// Mux inputs decleration
initial begin
i[0] = 1'b1;
i[1] = 1'b0;
i[2] = 1'b1;
i[3] = 1'b0;
end
// Decoder inputs deceleration
initial begin
for(j=0;j<4;j=j+1)
    begin
    {a,b} = j;
    #20;
    end
    #20 $finish;
end
endmodule
