`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 11:57:20
// Design Name: 
// Module Name: program_counter
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

module program_counter(
    input clk,
    input reset,
    output reg [7:0] pc
);

always @(posedge clk or posedge reset) begin
    if (reset)
        pc <= 8'd0;
    else
        pc <= pc + 1'b1;
end

endmodule