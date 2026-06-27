# RTL Code Files - 8-bit RISC Processor

## 📌 Overview

This folder contains all synthesizable Verilog HDL source files used to implement the 8-bit RISC Processor.

---

## 📂 Folder Contents

| File | Description |
|------|-------------|
| risc8_top.v | Top-level processor module |
| alu.v | Arithmetic Logic Unit |
| control_unit.v | Instruction decoder and control logic |
| register_file.v | Register file |
| instruction_memory.v | Program memory |
| data_memory.v | Data memory |
| program_counter.v | Program Counter |
| README.md | RTL documentation |

---

## 🧩 RTL Modules

### Program Counter
Generates the address of the next instruction.

### Instruction Memory
Stores processor instructions.

### Control Unit
Decodes instructions and generates control signals.

### Register File
Stores processor registers and operands.

### ALU
Performs arithmetic and logical operations.

### Data Memory
Stores data used by LOAD and STORE instructions.

### Top Module
Connects all processor modules together.

---

## 🛠 Design Features

- Written in Verilog HDL
- Fully synthesizable
- Modular design
- Easy to understand and modify
- Compatible with Xilinx Vivado

---

## ▶ Usage

1. Add all RTL files to the Vivado project.
2. Set `risc8_top` as the top module.
3. Run simulation or synthesis.

---

## ✔ Conclusion

The RTL code implements a modular and synthesizable 8-bit RISC Processor capable of executing arithmetic, logical, and memory operations.
