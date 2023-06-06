`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 01:05:43 AM
// Design Name: 
// Module Name: testBench
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

//when creatnig a simulation source within the design sources, it goes into the currently instantiates simulation alongside the design source scripts
//run a behavioural simulation
module testBench; //no inputs cuz were not calling it heheheha

//instantiate registers
reg [3:0] A,B;
reg C_IN; //convention to have capitalized registers?? idk ask moore or yantho

//the wires represent constants(eq to logisim i mean)
wire [3:0] SUM;
wire C_OUT;

fulladd4 FBADD (SUM, C_OUT, A, B, C_IN);

initial //__init__ lol
begin //i would look into what each of these individually do but you know me by now youre me why am i talking to myself not exactly sure its only like 1:30
$monitor ($time, " A= %b, B = %b, C_IN = %b, C_OUT = %b, SUM = %b\n", A, B, C_IN, C_OUT, SUM); //iayevengeoncap idk wtf is goin on here i mean i understand the fucking \n thats about it
// i think %b is blank but like mf what yk j pu
end //so theyre just serial begins and ends then endcase

initial
begin
//you should loop through and make a proper truth table future me
A = 4'd0; B = 4'd0; C_IN = 1'b0; //syntax for registers are BITAMOUNT'(d for decimal, b for binary)(num)

//gonna keep carry in as 0 for the whole thing, dont need to redifine
#3 //delay 3 time units not sure what it is tbh
A = 4'd3; B = 4'd9;
#3 //delay 3 time units not sure what it is tbh
A = 4'd10; B = 4'd15;
#3 //delay 3 time units not sure what it is tbh
A = 4'd10; B = 4'd5; C_IN = 1'b1;

end

endmodule
