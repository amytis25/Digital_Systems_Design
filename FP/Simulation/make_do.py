# gen_ts_do.py
# Generate TS_ARRIA_*.do and TS_CYC_*.do for RCA, CBA


# gen_ts_do.py
# Generate TS_ARRIA_*.do and TS_CYC_*.do for RCA, CBA

adders = {
    "RCA": "Ripple-Carry Adder",
    "CBA": "Carry-Bypass Adder",
}
shifters = {
    "Barrel": "Barrel Shifting unit",
    "IEEE": "Shifting unit that uses IEEE functions",
}
devices = {
    "ARRIA": "ARRIA II",
    "CYC":   "Cyclone IV E",
}
bits = {
    "32": "32-bit",
    "64": "64-bit",
    "128": "128-bit",
}


def make_fs_do(adder_code, adder_name, shift_code, shift_name, bits_code, bits_name):
    arch_code = f"{adder_code}_{shift_code}_{bits_code}"
    config_code = f"{adder_code}_{shift_code}"
    arch_name = f"{adder_name} and {shift_name}"
    filename = f"FS_{arch_code}.do"
    transcript_name = f"../Documentation/OutputFiles/FS_{arch_code}_Transcript.txt"

    content = f"""# ===========================
# {filename}
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Logic.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Shift.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none TB_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_ExecUnit_Func.vhd

# Start simulation using configuration
echo "Starting functional simulation for {arch_name} ..."
vsim -t 100ps -gui work.CFG_FUNC_{config_code} \
    -gN=64 \
    -gTestVectorFile="\"TestVectors/Exec{bits_code}.tvs\""

# Set up wave window
do wave.do
transcript file {transcript_name}
transcript quietly

echo "Running functional simulation for the {bits_name} execution unit using {arch_name}..."
run -all

echo "=== Functional Simulation for {arch_name} Complete ==="
transcript off
"""

    with open(filename, "w", newline="\n") as f:
        f.write(content)
    print(f"Wrote {filename}")


def make_ts_do(family_code, family_name, adder_code, adder_name, shift_code, shift_name, bits_code, bits_name):
    arch_code = f"{adder_code}_{shift_code}_{bits_code}"
    arch_name = f"{adder_name} and {shift_name}"
    filename = f"TS_{family_code}_{arch_code}.do"
    vho_path = f"ModelSim/Questa/{family_code}_{arch_code}.vho"
    sdo_path = f"ModelSim/Questa/{family_code}_{arch_code}.sdo"
    transcript_name = f"../Documentation/OutputFiles/TS_{family_code}_{arch_code}_Transcript.txt"
    content = f"""# ===========================
# {filename}
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none {vho_path}
vcom -work work -2008 -explicit -stats=none TB_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_ExecUnit_Time.vhd

# Start simulation using configuration
echo "Starting timing simulation for {arch_name} on {family_name}..."
vsim -t 100ps -gui -sdftyp /TB_ExecUnit/DUT={sdo_path} work.CFG_TIMING \
-gTestVectorFile="\"TestVectors/Exec{bits_code}.tvs\""
# Set up wave window
do wave.do
transcript file {transcript_name}
transcript quietly

echo "Running timing simulation for the {bits_name} execution unit using {arch_name} on {family_name}..."
run -all

echo "=== timing Simulation for {arch_name} on {family_name} Complete ==="
transcript off
"""

    with open(filename, "w", newline="\n") as f:
        f.write(content)
    print(f"Wrote {filename}")


def main():
    # Generate functional simulation DO files: loop every adder x shifter
    for ad_code, ad_name in adders.items():
        for sh_code, sh_name in shifters.items():
            for b_code, b_name in bits.items():
                make_fs_do(ad_code, ad_name, sh_code, sh_name, b_code, b_name)

    # Generate timing simulation DO files:
    # - For Cyclone (CYC) generate for every bits in `bits`
    # - For Arria (ARRIA) generate only for 32 and 64
    for dev_code, dev_name in devices.items():
        for ad_code, ad_name in adders.items():
            for sh_code, sh_name in shifters.items():
                if dev_code == "CYC":
                    for b_code, b_name in bits.items():
                        make_ts_do(dev_code, dev_name, ad_code, ad_name, sh_code, sh_name, b_code, b_name)
                elif dev_code.startswith("ARRIA"):
                    for b_code in ("32", "64"):
                        b_name = bits.get(b_code, f"{b_code}-bit")
                        make_ts_do(dev_code, dev_name, ad_code, ad_name, sh_code, sh_name, b_code, b_name)


if __name__ == "__main__":
    main()
