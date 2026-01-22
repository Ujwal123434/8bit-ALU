# 8bit-ALU
8-bit ALU in Verilog

Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.
The ALU performs arithmetic and logical operations based on a 3-bit select input.
The design is verified through simulation using a Verilog testbench.

Features
- 8-bit input operands
- 16-bit output result
- Combinational ALU design
- Verilog RTL implementation
- Testbench-based functional verification

ALU Operations
The operation is selected using the control signal s[2:0].

s = 000 : Addition (a + b)
s = 001 : Subtraction (a - b)
s = 010 : Bitwise NOT (~a)
s = 011 : Multiplication (a * b)
s = 100 : Bitwise AND (a & b)
s = 101 : Bitwise OR (a | b)
s = 110 : Bitwise NAND (~(a & b))
s = 111 : Bitwise XOR (a ^ b)

Project Structure
8bit-alu-verilog
- rtl
  - alu.v        (ALU RTL code)
- tb
  - alu_tb.v     (Testbench)
- README.txt

Simulation
Functional verification is performed using a Verilog testbench.
Waveforms are observed to validate ALU operations.
The design can be simulated using ModelSim, Vivado Simulator, or Icarus Verilog.

Notes
The design is verified only through simulation.
Synthesis and hardware implementation are not included in this project.

Author
Ujwal Kumar
Electronics and Communication Engineering

