`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 02:03:58 PM
// Design Name: 
// Module Name: fulladd4
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


module fulladd4(
//instantiating all possible variables
sum, c_out, a, b, c_in

    );
    output[3:0] sum; //defining a 4 element vector
    output c_out; //no need to specify scalar definition
    input[3:0] a, b; //define both a and be as 4 element vectors for inp
    input c_in;
    
    wire c1, c2, c3; //all the carry outputs (c1 is adder 0 to 1, c2 is 1 to 2 etc.)
    //wires essentially work as boolean variables (although tbf everything is a bool, these are just private while others are readable/writeable )
    
    //for larger scale fulladders may be worth doing this part with generate/endgenerate and a genvar for loop (for now im taking the lazy way out)
    fulladd fa0(sum[0], c1, a[0], b[0], c_in); //create the forst adder that adds the lsd, uses carry in and outputs to lsd of sum
    fulladd fa1(sum[1], c2, a[1], b[1], c1);
    fulladd fa2(sum[2], c3, a[2], b[2], c2);
    fulladd fa3(sum[3], c_out, a[3], b[3], c3); //msd
    
    //syntax for fulladd module is (sum output, carry output, a in, b in, carry input) 
endmodule
