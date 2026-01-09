# Digital Systems Design – Execution Unit
## Overview

This repository contains the design and implementation of a configurable execution unit developed as part of an upper-division Digital Systems Design course (ENSC 350) at Simon Fraser University. The project focuses on implementing and evaluating multiple arithmetic, logic, and shifting architectures in VHDL, with an emphasis on architectural trade-offs, correctness, and simulation-based validation.

The work demonstrates fundamental concepts in digital design and computer architecture, including modular design, carry-handling strategies, and performance/resource analysis.

### Notes on Coursework Context

This repository contains only the final implementation and supporting documentation created by the project team. Assignment descriptions, grading rubrics, and starter code provided by the course are intentionally excluded.

The project is presented here as a portfolio example of digital systems design and VHDL development.

## Project Scope

The execution unit supports a range of operations commonly found in processor datapaths, including:
- Arithmetic operations
- Logical operations
- Bit-shifting operations

Multiple architectural variants were explored to compare:
- Different carry-handling approaches
- Alternative shifting implementations
- Resource usage versus performance trade-offs

All designs were simulated and validated using Quartus and ModelSim.

## Contributions

This project was completed as part of a small team. Each persons contributions are listed below can be verified in work log records under documentation.

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
- Participated in project meetings and discussions
- Contributed to report review and submission preparation

## Tools & Technologies

- VHDL
- Quartus
- ModelSim
- Digital logic and computer architecture principles

## Repository Structure
```
Digital_Systems_Design/
├── addition_unit/
│   ├── src/
│   │   ├── EN_Adder.vhd                # Adder entity and multiple adder architectures
│   │   └── EN_LACG4.vhd                # 4-bit Look-Ahead Carry Network block
│   ├── sim/
│   │   ├── TB_Adder.vhd                # Functional and timing testbench
│   │   ├── Config_Adder.vhd            # Architecture configuration file
│   │   ├── TestVectors/
│   │   │   └── Adder00.tvs             # Comprehensive functional & timing test vectors
│   │   └── scripts/
│   │       ├── FS_run.do               # Functional simulation scripts
│   │       ├── TS_run.do               # Timing simulation scripts
│   │       └── runall.do               # Batch simulation runner
│   ├── quartus/
│   │   ├── DP2.qpf                     # Quartus project file
│   │   └── DP2.qsf                     # Quartus settings file
│   └── docs/
│       └── DP2-Report.pdf              # Cost, timing, and architecture analysis
│
├── execution_unit/
│   ├── src/
│   │   ├── EN_ExecUnit.vhd             # Top-level execution unit
│   │   ├── EN_Adder.vhd                # Arithmetic submodules
│   │   ├── EN_Logic.vhd                # Logic operation units
│   │   ├── EN_Shift.vhd                # Shift and rotate units
│   │   ├── Config_ExecUnit_Func.vhd    # Different Configurations for functional Simulations
│   │   └── Config_ExecUnit_Time.vhd    # Configuration for timing simulations
│   ├── sim/
│   │   ├── TB_ExecUnit.vhd             # Execution unit testbench
│   │   └── scripts/                    
│   │       ├── FS_run.do               # Functional simulation scripts
│   │       ├── TS_run.do               # Timing simulation scripts
│   │       └── runall.do               # Batch simulation runner
│   ├── quartus/
│   │   ├── FP.qpf                      # Quartus project file
│   │   └── FP.qsf                      # Quartus settings file
│   └── docs/
│       └── FP-Report.pdf               # Final project design report
│
└── README.md
```

## Architecture Variants Explored

### Addition Unit Configurations
1. **Ripple-Carry Adder (RCA)** — Baseline design with minimal area; carry propagates sequentially, resulting in the longest critical path.

2. **Carry Look-Ahead–Based Adders (LACTA / Prefix)** — Parallel carry generation significantly reduces critical path at the cost of increased logic and area.

3. **Hybrid Architectures (e.g., Carry-Bypass, Conditional-Sum)** — Intermediate designs that selectively accelerate carry propagation, achieving a balanced area–performance trade-off across evaluated candidates.

### Shifting Unit Configurations

1. **Manual Barrel Shifter** — Explicit multi-stage mux design enabling single-cycle variable shifts

2. **IEEE-Inferred Barrel Shifter** — Uses IEEE shift functions with synthesis-inferred hardware

3. **Shift Operations Supported** — Logical left, logical right, and arithmetic right shifts

## Build & Simulate

Create a ModelSim project in the `/Simulation` folder. In ModelSim's terminal `.do` script. The `.do` scripts will generate transcripts for all the targeted simulations.

(Note: To explore addition units, same kind of logic is applied in the folder `Addition_Unit/Simulation`)

**Scripts are auto-generated by `make_do.py`** — run this to create all simulation commands:
```bash
cd Execution_Unit/Simulation
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
- Shift operations (left, right, rotate)

## Key Takeaways

- Gained hands-on experience designing modular digital systems in VHDL
- Developed intuition for architectural trade-offs in execution unit design
- Strengthened skills in simulation-based validation and debugging
- Applied theoretical digital design concepts to a complete, testable system