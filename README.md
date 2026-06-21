# 8-bit RISC Processor using Verilog

## 📌 VLSI Internship Project Report

- **Name:** Vasamshetti Meghana  
- **Intern ID:** CITS691  
- **Branch:** Electronics and Communication Engineering (ECE)  
- **Duration:** 6 Weeks  
- **Domain:** VLSI / Digital Design / Verilog HDL  

---

## 📖 Project Overview

This project presents the design and implementation of an **8-bit RISC (Reduced Instruction Set Computer) Processor** using **Verilog HDL**.  

The processor follows a simplified RISC architecture that executes instructions in a fast and efficient manner using basic arithmetic, logical, and data transfer operations. The design is verified using simulation tools and synthesized using Vivado.

---

## 🎯 Objectives

- Design a simple 8-bit processor architecture  
- Implement CPU components using Verilog HDL  
- Understand instruction execution cycle  
- Verify functionality using simulation  
- Perform FPGA synthesis using Vivado  

---

## ⚙️ Features

- 8-bit data width architecture  
- Simple RISC Instruction Set Architecture (ISA)  
- Register-based processing  
- Arithmetic Logic Unit (ALU)  
- Control Unit for instruction decoding  
- Program Counter (PC)  
- Instruction Memory & Data Memory  
- Top module integration (`risc8_top`)  

---

## 🧠 Block Diagram Explanation

The block diagram represents the overall structure of the 8-bit RISC processor. It shows how different modules are connected and how data flows between them.

### 🔹 Main Components:

- **Program Counter (PC):**  
  Holds the address of the next instruction to be executed.

- **Instruction Memory:**  
  Stores the program instructions in binary format.

- **Register File:**  
  Stores temporary data and operands used by the ALU.

- **ALU (Arithmetic Logic Unit):**  
  Performs arithmetic (ADD, SUB) and logical (AND, OR) operations.

- **Control Unit:**  
  Decodes instruction and generates control signals.

- **Data Memory:**  
  Stores data during load and store operations.

### 🔹 Working Flow:

1. PC sends address to Instruction Memory  
2. Instruction is fetched  
3. Control Unit decodes instruction  
4. Register File provides operands  
5. ALU executes operation  
6. Result stored back in register or memory  

---

## 🔄 State Diagram Explanation

The state diagram defines how the processor moves between different execution states during instruction processing.

### 🔹 Main States:

- **FETCH State:**  
  Instruction is fetched from memory using Program Counter.

- **DECODE State:**  
  Instruction is decoded to identify operation type.

- **EXECUTE State:**  
  ALU performs required operation (ADD, SUB, etc.).

- **MEMORY State (if required):**  
  Data is read from or written to memory.

- **WRITE BACK State:**  
  Result is written back to register file.

### 🔹 Operation Flow:

FETCH → DECODE → EXECUTE → MEMORY → WRITE BACK → FETCH (loop continues)

This cycle ensures continuous instruction execution in the processor.

---

## 👍 Advantages

- Simple and easy-to-understand architecture  
- Faster instruction execution due to RISC design  
- Reduced number of instruction cycles  
- Modular and reusable Verilog design  
- Suitable for FPGA implementation and learning  

---

## 🚀 Applications

- Educational purpose in VLSI and computer architecture  
- FPGA-based processor design projects  
- Embedded system learning platforms  
- Digital design and verification training  
- Research in processor architecture  

---

## 🔮 Future Scope

- Implementation of pipelined RISC architecture  
- Addition of advanced instruction set (multiplication, division)  
- Integration of cache memory  
- FPGA hardware deployment and testing  
- Interrupt and exception handling support  
- Low-power optimization techniques  

---

## 🧩 Architecture Components

- Program Counter (PC)  
- Instruction Memory  
- Register File  
- ALU (Arithmetic Logic Unit)  
- Control Unit  
- Data Memory  
- Top Module (`risc8_top`)  

---

## 📂 Folder Structure
