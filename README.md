# Basic CMOS Logic Gates in Verilog

A beginner-friendly project demonstrating the implementation and simulation of basic CMOS logic gates using Verilog HDL. This repository serves as an educational resource for learning digital design fundamentals and Verilog simulation workflows.

## 📋 Project Description

This project implements three fundamental logic gates that form the building blocks of digital circuits:
- **Inverter (NOT gate)**: Implements logical negation
- **NAND gate**: Implements negated AND operation
- **NOR gate**: Implements negated OR operation

Each module includes comprehensive testbenches for functional verification and waveform analysis using industry-standard tools.

## 🎯 Learning Objectives Achieved

Through this project, the following Verilog and digital design concepts were explored

### ✅ Verilog Language Fundamentals
- Module declaration and instantiation
- Input/output port definitions
- Continuous assignment (`assign`) statements
- Logical operators (`~`, `&`, `|`)
- Testbench development methodology

### ✅ Digital Design Concepts
- Boolean logic implementation
- Truth table verification
- Combinational circuit design
- Gate-level modeling

### ✅ Simulation and Verification
- Testbench structure and best practices
- Stimulus generation for exhaustive testing
- Waveform analysis and debugging
- VCD (Value Change Dump) file generation

### ✅ Tool Integration
- Icarus Verilog compilation and simulation
- GTKWave waveform viewer integration
- Automated testing workflows
- Project organization and file management

## 🔧 Prerequisites

Before running this project, ensure you have the following tools installed:

### Required Tools
- **Icarus Verilog** (`iverilog`): Verilog compiler and simulator
- **GTKWave**: Waveform viewer for signal analysis

### Installation Instructions

#### Ubuntu/Debian:
```bash
sudo apt update
sudo apt install iverilog gtkwave
```

#### Fedora/CentOS:
```bash
sudo dnf install iverilog gtkwave
```

#### macOS (using Homebrew):
```bash
brew install icarus-verilog gtkwave
```

#### Windows:
- Download Icarus Verilog from: http://bleyer.org/icarus/
- Download GTKWave from: http://gtkwave.sourceforge.net/

## 🚀 Usage Instructions

### Quick Start
1. Clone the repository:
   ```bash
   git clone https://github.com/iledesma08/basic-cmos-logic-verilog.git
   cd basic-cmos-logic-verilog
   ```

2. Make the simulation script executable:
   ```bash
   chmod +x run_all.sh
   ```

3. Run the interactive simulation script:
   ```bash
   ./run_all.sh
   ```

### Script Features
The `run_all.sh` script provides:
- **Automatic tool verification**: Checks if required tools are installed
- **Interactive module selection**: Choose which gate to simulate
- **Automated compilation**: Compiles source and testbench files
- **Simulation execution**: Runs the testbench simulation
- **Waveform visualization**: Opens GTKWave for signal analysis
- **Cleanup**: Removes temporary files after viewing

### Manual Simulation (Alternative)
For manual control, you can run individual steps:

```bash
# Compile (example for inverter)
iverilog -o test/inverter.out test/test_inverter.v src/inverter.v

# Simulate
vvp test/inverter.out

# View waveforms
gtkwave test/waves/inverter.vcd
```

## 📊 Results and Analysis

### Truth Tables Verified

| Module | Inputs | Output | Description |
|--------|--------|---------|-------------|
| Inverter | A | Y = ~A | Output is inverted input |
| NAND2 | A, B | Y = ~(A & B) | Output is LOW only when both inputs are HIGH |
| NOR2 | A, B | Y = ~(A | B) | Output is HIGH only when both inputs are LOW |

### Simulation Results
Each testbench exhaustively tests all possible input combinations:
- **2 test cases** for the inverter (1-bit input)
- **4 test cases** for NAND and NOR gates (2-bit inputs)
- All simulations verify correct logic operation according to Boolean algebra

### Waveform Analysis
The generated VCD files allow visualization of:
- Input signal transitions
- Output responses to input changes
- Propagation delays (in simulation time units)
- Signal integrity verification

## 📁 Project Structure

```
basic-cmos-logic-verilog/
├── src/                    # Source modules
│   ├── inverter.v         # NOT gate implementation
│   ├── nand2.v            # NAND gate implementation
│   └── nor2.v             # NOR gate implementation
├── test/                   # Testbenches and simulation files
│   ├── test_inverter.v    # Inverter testbench
│   ├── test_nand2.v       # NAND gate testbench
│   ├── test_nor2.v        # NOR gate testbench
│   ├── waves/             # Generated VCD waveform files
│   └── results/           # Simulation output logs
├── run_all.sh             # Interactive simulation script
├── .gitignore             # Git ignore patterns
├── LICENSE                # Project license
└── README.md              # This file
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
