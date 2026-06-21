`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 11:58:57
// Design Name: 
// Module Name: register_file
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

module register_file(
    input clk,
    input we,
    input [2:0] rs1,
    input [2:0] rs2,
    input [2:0] rd,
    input [7:0] write_data,

    output [7:0] read_data1,
    output [7:0] read_data2
);

reg [7:0] regs [0:7];
integer i;

// Initialize registers
initial begin
    for (i = 0; i < 8; i = i + 1)
        regs[i] = 8'd0;

    // Temporary values for testing
    regs[1] = 8'd10;
    regs[2] = 8'd5;
end

assign read_data1 = regs[rs1];
assign read_data2 = regs[rs2];

always @(posedge clk) begin
    if (we)
        regs[rd] <= write_data;
end

endmodule