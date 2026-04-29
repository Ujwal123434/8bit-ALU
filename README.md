# 8-bit ALU with Status Flags

## Overview
An 8-bit Arithmetic Logic Unit (ALU) designed in Verilog HDL that supports 8 operations including arithmetic, logical, and bitwise functions. The ALU also generates four essential status flags — Carry, Zero, Sign, and Overflow — which are critical for processor-level decision making and conditional branching in digital systems.

---

## Module Overview

| Port | Direction | Width | Description |
|------|-----------|-------|-------------|
| `a` | input | 8-bit | Operand A |
| `b` | input | 8-bit | Operand B |
| `s` | input | 3-bit | Operation select |
| `y` | output | 16-bit | Result |
| `carry` | output | 1-bit | Carry flag |
| `zero` | output | 1-bit | Zero flag |
| `sign` | output | 1-bit | Sign flag |
| `overflow` | output | 1-bit | Overflow flag |

---

## Operations

| s | Operation | Description |
|---|-----------|-------------|
| 3'd0 | `a + b` | Addition |
| 3'd1 | `a - b` | Subtraction |
| 3'd2 | `~a` | Bitwise NOT |
| 3'd3 | `a * b` | Multiplication |
| 3'd4 | `a & b` | Bitwise AND |
| 3'd5 | `a \| b` | Bitwise OR |
| 3'd6 | `~(a & b)` | Bitwise NAND |
| 3'd7 | `a ^ b` | Bitwise XOR |

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
├── sim/
|    └── simulation result
|    └── waveform
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
6. Click **Open Elborated Design** → **Schematic**.
7. Observe the schematic of design 
8. Verify that the output matches the expected ALU operation for each select input.

### Simulation Result
- All ALU operations were verified through waveform analysis.
- The design functions correctly for all select input combinations.

