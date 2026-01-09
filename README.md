# Execution Unit Design
## Overview
This repository contains the design and implementation of a configurable 64-bit execution unit written in VHDL, consisting of arithmetic, logic, and shifting subsystems. Multiple architectural variants were implemented and evaluated to study
correctness, performance, and resource trade-offs on FPGA targets.

The work demonstrates fundamental concepts in digital design and computer architecture, including modular design, carry-handling strategies, and performance–resource analysis.

This project was developed as part of an upper-division Digital Systems Design course (ENSC 350) at Simon Fraser University.

## Project Scope
All subsystems are evaluated in parallel, with results selected through a top-level datapath that models a simplified processor execution stage. The execution unit supports a range of operations commonly found in processor datapaths, including:
- Arithmetic operations
- Logical operations
- Bit-shifting operations

Multiple architectural variants were explored to compare:
- Different carry-handling approaches
- Alternative shifting implementations
- Resource usage versus performance trade-offs

All designs were simulated and validated using Quartus and ModelSim.

## Architecture Variants Explored

### Addition Unit Configurations
1. **Ripple-Carry Adder (RCA)** — Baseline design with minimal area; carry propagates sequentially, resulting in the longest critical path.

2. **Carry Look-Ahead–Based Adders (LACTA / Prefix)** — Parallel carry generation significantly reduces critical path at the cost of increased logic and area.

3. **Hybrid Architectures (e.g., Carry-Bypass, Conditional-Sum)** — Intermediate designs that selectively accelerate carry propagation, achieving a balanced area–performance trade-off across evaluated candidates.

### Shifting Unit Configurations

1. **Manual Barrel Shifter** — Explicit multi-stage mux design enabling
   single-cycle variable shifts

2. **IEEE-Inferred Barrel Shifter** — Uses IEEE shift functions with
   synthesis-inferred hardware

3. **Supported Operations** — Logical left, logical right, and arithmetic
   right shifts

## Repository Structure
```
Digital_Systems_Design/
├── SourceCode/          # VHDL source files for the execution unit and submodules
│   ├── EN_ExecUnit.vhd  # Top-level execution unit
│   ├── EN_Adder.vhd     # Arithmetic submodules
│   ├── EN_Logic.vhd     # Logic operation units
│   └── EN_Shift.vhd     # Shift units
│
├── Addition_Unit/       # Standalone adder architecture exploration
│   ├── SourceCode/      # Adder implementations and supporting components
│   ├── Simulation/      # Functional and timing testbenches and scripts
│   └── Documentation/   # Addition unit design report and analysis
│
├── Simulation/          # Execution-unit-level functional and timing simulations
│   ├── testbenches/     # ModelSim testbenches
│   ├── scripts/         # Auto-generated .do scripts for batch simulation
│   └── test_vectors/    # Functional and worst-case timing vectors
│
├── Documentation/       # Final project reports, summaries, and figures
│
├── Archive/             # Archived files, transcripts, and intermediate artifacts
│
├── .gitignore
└── README.md
```

## Contributions

This project was completed as part of a small team. Individual contributions
are listed below and can be verified through work logs in the documentation.

### Amytis Saghafi
- Designed and implemented VHDL architectures for arithmetic and execution-unit components
- Integrated adder, logic, and shifting subsystems into a top-level execution unit
- Developed functional and timing testbenches, configuration files, and simulation scripts in ModelSim
- Performed FPGA synthesis, timing simulation, and critical-path analysis for Cyclone IV and Arria II devices
- Conducted cost estimation, resource utilization analysis, and performance comparisons across design candidates
- Generated figures, tables, and analysis used in both project reports
- Authored and edited report sections including experimental procedures, design analysis, and conclusions
- Organized project directory structure, simulation outputs, and documentation

### Simon Schaufele
- Designed and implemented VHDL components for arithmetic and execution-unit subsystems
- Contributed to integration of adder, logic, and shifting blocks within the execution unit
- Assisted with development and validation of functional and timing testbenches
- Ran Quartus synthesis and ModelSim simulations for selected design candidates
- Participated in timing analysis, waveform inspection, and interpretation of simulation results
- Contributed written material, figures, and revisions to both Design Project 2 and Final Project reports

### Sahill Singh
- Participated in design discussions and project reviews
- Contributed to report refinement and submission preparation

## Tools & Technologies
- VHDL (structural and behavioral design)
- Intel Quartus (synthesis & timing analysis)
- ModelSim (functional and timing simulation)
- Digital logic and computer architecture principles


## Simulation & Validation

All designs were validated using:
- **Functional simulation** with comprehensive test vectors
- **Timing simulation** with post-synthesis netlists
- **Quartus synthesis** targeting Intel FPGA devices
- **ModelSim waveform analysis** for verification

Test vectors cover:
- Edge cases (overflow, zero operands)
- Arithmetic operations (addition, subtraction)
- Logic operations (AND, OR, XOR, NOT)
- Shift operations (logical left, logical right, arithmetic right)

## Key Takeaways

- Gained hands-on experience designing modular digital systems in VHDL
- Developed intuition for architectural trade-offs in execution unit design
- Strengthened skills in simulation-based validation and debugging
- Applied theoretical digital design concepts to a complete, testable system


## Build & Simulate (Optional)

This repository includes complete ModelSim and Quartus workflows for
functional and timing verification. Simulation scripts are auto-generated
to support multiple architectures, bit widths, and FPGA targets.

**Scripts are auto-generated by `make_do.py`** — run this to create all simulation commands:
```bash
cd Simulation
python make_do.py
```

### Run All Simulations
```bash
do FS_all.do      # All functional simulations (all bit widths & architectures)
do TS_all.do      # All timing simulations (all bit widths & devices)
```

### By Bit Width
```bash
do FS_16.do       # Functional: 16-bit (all adder/shifter combos)
do FS_32.do       # Functional: 32-bit
do FS_64.do       # Functional: 64-bit
do FS_128.do      # Functional: 128-bit

do TS_16.do       # Timing: 16-bit (Cyclone IV)
do TS_32.do       # Timing: 32-bit (Cyclone IV & ARRIA II)
do TS_64.do       # Timing: 64-bit (Cyclone IV & ARRIA II)
do TS_128.do      # Timing: 128-bit (Cyclone IV only)
```

### Specific Architecture + Shifter + Bit Width
```bash
# Functional: {Adder}_{Shifter}_{Bits}
do FS_RCA_Barrel_32.do        # RCA + Barrel Shifter, 32-bit
do FS_CBA_IEEE_64.do          # CBA + IEEE Shifter, 64-bit

# Timing: {Device}_{Adder}_{Shifter}_{Bits}
do TS_CYC_RCA_Barrel_32.do    # Cyclone IV: RCA + Barrel, 32-bit
do TS_ARRIA_CBA_IEEE_64.do    # ARRIA II: CBA + IEEE, 64-bit
```


### Academic Context

This repository contains only the final implementation and supporting documentation created by the project team. Assignment descriptions, grading rubrics, and starter code provided by the course are intentionally excluded.

The project is presented here as a portfolio example of digital systems design and VHDL development.