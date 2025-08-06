#!/bin/bash

# ========= Tool Check =========
for tool in iverilog gtkwave; do
    if ! command -v "$tool" &> /dev/null; then
        echo "❌ Error: $tool is not installed. Please install it and re-run this script."
        exit 1
    fi
done

# ========= File Paths =========
SRC_DIR="src"
SIM_DIR="test"
WAVES_DIR="$SIM_DIR/waves"

declare -A modules=(
    ["inverter"]="inverter"
    ["nand2"]="nand2"
    ["nor2"]="nor2"
)

mkdir -p "$WAVES_DIR"

# ========= Module Selection =========
echo "🔍 Choose a module to simulate:"
select opt in "${!modules[@]}" "Quit"; do
    if [[ "$opt" == "Quit" ]]; then
        echo "Exiting."
        exit 0
    elif [[ -n "${modules[$opt]}" ]]; then
        module="${modules[$opt]}"
        break
    else
        echo "❗ Invalid option. Try again."
    fi
done

# ========= Compile =========
echo "🔧 Compiling $module..."
iverilog -o "$SIM_DIR/${module}.out" "$SIM_DIR/test_${module}.v" "$SRC_DIR/${module}.v"

if [ $? -ne 0 ]; then
    echo "❌ Compilation failed for $module."
    exit 1
fi

# ========= Simulate =========
echo "🚀 Running simulation..."
vvp "$SIM_DIR/${module}.out"

# ========= Open GTKWave =========
echo "📈 Opening GTKWave..."
gtkwave "$WAVES_DIR/${module}.vcd"

# ========= Cleanup =========
echo "🧹 Cleaning up generated files..."
rm -f "$SIM_DIR/${module}.out" "$WAVES_DIR/${module}.vcd"

echo "✅ Done."
