`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 12:00:39
// Design Name: 
// Module Name: data_memory
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

module data_memory(
    input clk,
    input mem_write,
    input mem_read,
    input [7:0] addr,
    input [7:0] write_data,

    output reg [7:0] read_data
);

reg [7:0] mem [0:255];

always @(posedge clk) begin
    if (mem_write)
        mem[addr] <= write_data;
end

always @(*) begin
    if (mem_read)
        read_data = mem[addr];
    else
        read_data = 8'd0;
end

endmodule