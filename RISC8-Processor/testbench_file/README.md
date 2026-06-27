# Testbench - 8-bit RISC Processor

## 📌 Overview

This folder contains the Verilog testbench used to verify the functionality of the 8-bit RISC Processor through simulation.

---

## 📂 Folder Contents

| File | Description |
|------|-------------|
| risc8_tb.v | Main testbench |
| README.md | Testbench documentation |

---

## 🎯 Objective

The testbench generates clock, reset, and input stimulus to verify the processor functionality.

---

## 🛠 Verification

The following features are verified:

- Reset operation
- Clock generation
- Instruction execution
- ALU operations
- Register write-back
- Memory read/write

---

## ▶ Running the Testbench

1. Open Vivado.
2. Add RTL files.
3. Add `risc8_tb.v`.
4. Run Behavioral Simulation.
5. Observe waveform.

---

## ✔ Result

The testbench successfully verifies the operation of the 8-bit RISC Processor under different instruction sequences.
