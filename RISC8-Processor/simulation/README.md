# Simulation Results - 8-bit RISC Processor

## 📌 Overview

This folder contains the simulation results of the 8-bit RISC Processor. The design was verified using Xilinx Vivado Simulator. The results include the RTL schematic generated during elaboration and the behavioral simulation waveform.

---

## 📂 Folder Contents

| File | Description |
|------|-------------|
| rtl_schematic.png | RTL schematic of the 8-bit RISC Processor |
| waveform.png | Behavioral simulation waveform |
| risc8_tb.v | Testbench used for simulation |
| README.md | Simulation documentation |

---

## 🛠 Simulation Environment

- HDL Language: Verilog
- Simulation Tool: Xilinx Vivado Simulator
- Design: 8-bit RISC Processor

---

## ▶ Simulation Procedure

1. Add all RTL design files to the Vivado project.
2. Add the testbench (`risc8_tb.v`) as the simulation source.
3. Set the top module as `risc8_top`.
4. Run **Behavioral Simulation**.
5. Verify the RTL schematic and waveform.

---

## 📊 RTL Schematic

The RTL schematic represents the structural organization of the 8-bit RISC Processor after RTL elaboration. It illustrates the interconnection between the processor modules such as the Program Counter, Instruction Memory, Control Unit, Register File, ALU, Data Memory, and Write-Back logic.

**RTL Schematic**

![RTL Schematic](rtl_schematic.png)

---

## 📈 Simulation Waveform

The behavioral waveform verifies the correct execution of the processor. The waveform shows the sequence of instruction fetch, decode, operand read, ALU execution, memory access, and register write-back during clock cycles.

**Simulation Waveform**

![Simulation Waveform](waveform.png)

---

## ✅ Simulation Verification

The following operations were successfully verified:

- Instruction Fetch
- Instruction Decode
- Register Read
- ALU Operations
- Arithmetic Instructions
- Logical Instructions
- Memory Read and Write Operations
- Register Write-Back
- Clock and Reset Functionality

---

## ✔ Result

The behavioral simulation confirms that the 8-bit RISC Processor operates correctly. The RTL schematic verifies the hardware structure, while the waveform demonstrates successful execution of the implemented instructions with the expected control and data flow.
