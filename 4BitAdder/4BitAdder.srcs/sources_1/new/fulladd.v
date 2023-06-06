`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 12:33:07 AM
// Design Name: 
// Module Name: fulladd
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

//syntax for fulladd module is (sum output, carry output, a in, b in, carry input) 
module fulladd(
sum, c_out, a, b, c_in
    );
    output sum, c_out;
    input a, b, c_in;
    
    //define all the gates by input/wires
    //gates suntax is gatename(out, in1, in2)
    
    wire johnSmith, penisIngester95, long;
    xor(johnSmith, a, b);
    and(long, a, b);
    and(penisIngester95, c_in, johnSmith);
    xor(sum, johnSmith, c_in);
    or(c_out, long, penisIngester95);
endmodule
