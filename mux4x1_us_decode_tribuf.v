`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 11:34:29
// Design Name: 
// Module Name: mux4x1_us_decode_tribuf
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


module mux4x1_us_decode_tribuf(a,b,y,i,out);
input a,b;
input [3:0]i;
output [3:0]y;
output out;
//2 x 4 Decoder implementation
assign y[0] = (~a&~b);
assign y[1] = (~a&b);
assign y[2] = (a&~b);
assign y[3] = (a&b);
wor x;
// Buffer decleration
bufif1 buf1 (x,i[0],y[0]);
bufif1 buf2 (x,i[1],y[1]);
bufif1 buf3 (x,i[2],y[2]);
bufif1 buf4 (x,i[3],y[3]);

assign out = x;
endmodule
