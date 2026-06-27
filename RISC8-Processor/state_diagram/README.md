# State Diagram - 8-bit RISC Processor

## 📌 Overview

This folder contains the **Finite State Machine (FSM) State Diagram** of the 8-bit RISC Processor. The state diagram illustrates the sequence of operations performed during the execution of each instruction.

---

## 📂 Folder Contents

| File | Description |
|------|-------------|
| state_diagram.png | FSM state diagram of the 8-bit RISC Processor |
| README.md | Documentation for the state diagram |

---

## 🎯 Purpose

The state diagram represents the control flow of the processor. It shows how the processor transitions through different execution stages to complete an instruction.

---

## 🔄 Processor States

### **S0 – FETCH**
- Fetches the instruction from instruction memory.
- Loads the instruction into the Instruction Register (IR).
- Increments the Program Counter (PC).

### **S1 – DECODE**
- Decodes the fetched instruction.
- Generates the required control signals.
- Determines the instruction type.

### **S2 – READ OPERANDS**
- Reads source operands (Rs1 and Rs2) from the register file.
- Prepares data for execution.

### **S3 – EXECUTE**
- Performs arithmetic or logical operations using the ALU.
- Computes memory addresses for LOAD and STORE instructions.

### **S4 – MEMORY ACCESS**
- Reads data from memory for LOAD instructions.
- Writes data to memory for STORE instructions.

### **S5 – WRITE BACK**
- Writes the computed result back to the destination register.
- Completes the instruction execution cycle.

---

## 🔁 State Transition

```
Reset
   │
   ▼
FETCH
   │
   ▼
DECODE
   │
   ▼
READ OPERANDS
   │
   ▼
EXECUTE
   │
   ▼
MEMORY ACCESS
   │
   ▼
WRITE BACK
   │
   └────────────► FETCH
```

---



## ✅ Features

- Six-state Finite State Machine (FSM)
- Sequential instruction execution
- Clock-driven control logic
- Supports arithmetic, logical, memory, and register operations
- Ensures correct synchronization between processor modules

---

## ✔ Conclusion

The FSM-based state diagram provides a clear representation of the instruction execution cycle in the 8-bit RISC Processor. It ensures orderly progression through the Fetch, Decode, Read Operands, Execute, Memory Access, and Write Back stages, enabling reliable and efficient processor operation.
