# 8-bit ALU in Verilog

## Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.  
The ALU performs arithmetic and logical operations based on a 3-bit select input.  
The design is verified through simulation using a Verilog testbench.

---

## Features
- 8-bit input operands
- 16-bit output result
- Combinational ALU design
- Verilog RTL implementation
- Testbench-based functional verification

---

## ALU Operations

| Select (s[2:0]) | Operation        | Description |
|-----------------|------------------|-------------|
| 000             | Addition         | a + b |
| 001             | Subtraction      | a − b |
| 010             | Bitwise NOT      | ~a |
| 011             | Multiplication   | a × b |
| 100             | Bitwise AND      | a & b |
| 101             | Bitwise OR       | a \| b |
| 110             | Bitwise NAND     | ~(a & b) |
| 111             | Bitwise XOR      | a ^ b |

---

## Project Structure
```
8bit-alu-verilog/
│
├── rtl/
│   └── alu.v        # ALU RTL code
│
├── tb/
│   └── alu_tb.v     # Testbench
│
└── README.md
```

## Simulation

Functional verification of the 8-bit ALU is performed using a Verilog testbench.

The testbench applies different input combinations and select signals to validate all ALU operations. Waveforms are observed to ensure the correctness of the output for each operation.

### Simulation Tools
The design can be simulated using:
- Xilinx Vivado Simulator

### Simulation Steps (Vivado)

1. Open Vivado and create a new project.
2. Add the following files:
   - rtl/alu.v
   - tb/alu_tb.v
3. Set `alu_tb.v` as the top module.
4. Click **Run Simulation** → **Run Behavioral Simulation**.
5. Observe the waveform window.
6. Click **Open Elborated Design ** → **Schematic**.
7. Observe the schematic of design 
8. Verify that the output matches the expected ALU operation for each select input.

### Simulation Result
- All ALU operations were verified through waveform analysis.
- The design functions correctly for all select input combinations.







