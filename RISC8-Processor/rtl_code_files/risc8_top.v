`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 12:02:13
// Design Name: 
// Module Name: risc8_top
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

module risc8_top(
    input clk,
    input reset,

   
    output [7:0] pc_out,
    output [15:0] instr_out,
    output [7:0] alu_out,
    output [7:0] reg_data1_out,
    output [7:0] reg_data2_out
);

wire [7:0] pc;
wire [15:0] instr;

wire [3:0] opcode;
wire [2:0] rd, rs1, rs2;

wire reg_write;
wire mem_read;
wire mem_write;

wire [2:0] alu_op;

wire [7:0] reg_data1;
wire [7:0] reg_data2;

wire [7:0] alu_result;
wire [7:0] mem_data;


// ---------------- INSTRUCTION DECODE ----------------
assign opcode = instr[15:12];
assign rd     = instr[11:9];
assign rs1    = instr[8:6];
assign rs2    = instr[5:3];


// ---------------- OUTPUT ASSIGNMENTS ----------------
assign pc_out        = pc;
assign instr_out     = instr;
assign alu_out       = alu_result;
assign reg_data1_out = reg_data1;
assign reg_data2_out = reg_data2;


// ---------------- PROGRAM COUNTER ----------------
program_counter PC (
    .clk(clk),
    .reset(reset),
    .pc(pc)
);


// ---------------- INSTRUCTION MEMORY ----------------
instruction_memory IM (
    .addr(pc),
    .instruction(instr)
);


// ---------------- CONTROL UNIT ----------------
control_unit CU (
    .opcode(opcode),
    .reg_write(reg_write),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .alu_op(alu_op)
);


// ---------------- REGISTER FILE ----------------
register_file RF (
    .clk(clk),
    .we(reg_write),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .write_data(mem_read ? mem_data : alu_result),
    .read_data1(reg_data1),
    .read_data2(reg_data2)
);


// ---------------- ALU ----------------
alu ALU (
    .a(reg_data1),
    .b(reg_data2),
    .alu_op(alu_op),
    .result(alu_result)
);


// ---------------- DATA MEMORY ----------------
data_memory DM (
    .clk(clk),
    .mem_write(mem_write),
    .mem_read(mem_read),
    .addr(alu_result),
    .write_data(reg_data2),
    .read_data(mem_data)
);

endmodule
