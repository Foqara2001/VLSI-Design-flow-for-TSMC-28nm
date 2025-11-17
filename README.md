# ⭐ VLSI Design Flow for TSMC 28nm
Complete RTL-to-GDSII Physical Design Flow using Synopsys EDA Tools

This project demonstrates a full ASIC backend flow implemented on TSMC 28nm technology, covering the complete path from RTL design to final GDSII.
It uses Synopsys industry-standard tools for design, verification, synthesis, physical implementation, and formal checks.

<img width="1076" height="455" alt="image" src="https://github.com/user-attachments/assets/d9917db3-d132-4337-90d9-4ea19c71350f" />


# 🚀 Project Overview

The goal of this project is to create a complete VLSI design flow (The Book) that helps students build a chip using TSMC 28nm technology by implementing a RISC-V processor through the full ASIC design cycle, including: 

RTL design & functional verification

Synthesis to gate-level netlist

Formal equivalence checking

Full physical design flow

Timing closure (MMMC)

GDSII generation ready for tape-out

The flow uses Synopsys VCS, Verdi, eucilde, Fusion Compiler, Formality, prime time , starRC, calibre.


![WhatsApp Image 2025-08-30 at 21 11 16](https://github.com/user-attachments/assets/0f701955-0c1c-4c16-9927-3debaf985fb9)


# 📌 Included Steps in the Flow
# 1️⃣ RTL Simulation & Verification

RTL written in SystemVerilog

Testbench environment for simulation

Functional debugging using Verdi

Code/functional coverage collection

Waveform analysis

Simulation using Synopsys eucilde

![WhatsApp Image 2025-08-30 at 18 13 35](https://github.com/user-attachments/assets/02767d49-68a2-45b4-923b-dac951ee265b)
<img width="775" height="607" alt="image" src="https://github.com/user-attachments/assets/4ce30adb-a4bc-4868-96e7-573e31f4fa56" />
<img width="1600" height="586" alt="image" src="https://github.com/user-attachments/assets/4a0c083f-be90-427c-8f95-369f51088f5a" />
<img width="1591" height="287" alt="image" src="https://github.com/user-attachments/assets/4bcc8097-5ddc-4c5c-8eec-6081219731f3" />






# 2️⃣ Logic Synthesis —  Fusion Compiler

Constraint setup (SDC)

MMMC corner definitions

Technology mapping to TSMC 28nm standard cell libraries

Optimization for power, timing, and area

Generation of:

Gate-level netlist

Timing reports

Area and power reports

SVF file for Formality

# 3️⃣ Formal Equivalence Checking — Formality

Compares RTL vs synthesized netlist

Uses SVF to guide matching

Ensures functional correctness before physical design

<img width="585" height="444" alt="image" src="https://github.com/user-attachments/assets/8644f009-6a7d-49f7-93f2-3ce4ef9a4538" />


# 4️⃣ Physical Design 

Complete implementation flow:

# ✔ Design Initialization

Import SDC, libraries, LEF/DEF

Macro placement

Floorplanning

Power network creation

# ✔ Placement

Standard-cell placement

Filler, tap, and end-cap insertion
<img width="726" height="501" alt="image" src="https://github.com/user-attachments/assets/75363f54-aff6-46dc-9b54-035197cd7a4d" />


# ✔ Clock Tree Synthesis (CTS)

balanced clock tree

Skew & latency optimization

<img width="378" height="348" alt="image" src="https://github.com/user-attachments/assets/dc04a304-23c7-4503-912c-d63b7300ff59" />


# ✔ Routing

Global + detailed routing

DRC-clean metal layer routing

<img width="476" height="302" alt="image" src="https://github.com/user-attachments/assets/5af30178-047d-4842-bd01-c7748aa572f6" />
<img width="856" height="376" alt="image" src="https://github.com/user-attachments/assets/e923f6a9-bb2b-446c-a28a-9798b521fa88" />



# ✔ Timing Closure

Setup and hold fixing

ECO pass



# ✔ Signoff

Final timing reports

DRC/LVS-ready layout

GDSII export

<img width="760" height="704" alt="image" src="https://github.com/user-attachments/assets/6cdbeb77-943c-4c1a-b5a6-c7e96fc34698" />

# 🛠️ Tools Used
Stage	Tool
RTL Simulation	Synopsys VCS, Verdi, eucilde
Synthesis	Design Compiler  Fusion Compiler
Formal Check	Formality
Physical Design	Fusion Compiler
Signoff	PrimeTime + starRC + calibre

# 📦 Technology & Libraries

TSMC 28nm P&R rules

NDM form synopsys (lib for std and lef)


# 🎯 Project Outcome

By the end of this flow, the project produces:

Optimized gate-level netlist

Physical layout (DEF + GDSII)

Clock-tree balanced design

Verified timing closure across corners

DRC/LVS-ready layout suitable for tape-out

Book that expalin every step in the flow to help the students in the future .

# 📜 License

This project is for academic learning and demonstration purposes only.
Library files and Synopsys tool scripts cannot be distributed publicly.
