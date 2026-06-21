`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 11:58:09
// Design Name: 
// Module Name: instruction_memory
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

module instruction_memory(
    input [7:0] addr,
    output [15:0] instruction
);

reg [15:0] mem [0:255];
integer i;
initial begin
    for (i = 0; i < 256; i = i + 1)
        mem[i] = 16'd0;

    // ADD R3 = R1 + R2
    mem[0] = 16'b0000_011_001_010_000;

    // SUB R4 = R1 - R2
    mem[1] = 16'b0001_100_001_010_000;

    // AND R5 = R1 & R2
    mem[2] = 16'b0010_101_001_010_000;

    // OR R6 = R1 | R2
    mem[3] = 16'b0011_110_001_010_000;

    // XOR R7 = R1 ^ R2
    mem[4] = 16'b0100_111_001_010_000;
end
assign instruction = mem[addr];

endmodule
