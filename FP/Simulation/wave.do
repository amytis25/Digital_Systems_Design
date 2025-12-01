onerror {resume}
quietly WaveActivateNextPane {} 0

# Top divider
add wave -noupdate -divider {DUT Signals}

# ========== INPUTS ==========
add wave -noupdate -expand -group {DUT Signals} -divider Inputs

# A & B (hex)
add wave -noupdate -expand -group {DUT Signals} -height 45 -label {A (Hex)} \
    -radix hexadecimal /tb_execunit/TBA
add wave -noupdate -expand -group {DUT Signals} -height 45 -label {B (Hex)} \
    -radix hexadecimal /tb_execunit/TBB

# Control signals
add wave -noupdate -expand -group {DUT Signals} -height 30 -label FuncClass \
    -radix unsigned /tb_execunit/TBFuncClass
add wave -noupdate -expand -group {DUT Signals} -height 30 -label LogicFN \
    -radix unsigned /tb_execunit/TBLogicFN
add wave -noupdate -expand -group {DUT Signals} -height 30 -label ShiftFN \
    -radix unsigned /tb_execunit/TBShiftFN
add wave -noupdate -expand -group {DUT Signals} -height 30 -label AddnSub \
    /tb_execunit/TBAddnSub
add wave -noupdate -expand -group {DUT Signals} -height 30 -label ExtWord \
    /tb_execunit/TBExtWord

# ========== OUTPUTS ==========
add wave -noupdate -expand -group {DUT Signals} -divider Outputs

# Y (hex) and flags
add wave -noupdate -expand -group {DUT Signals} -height 45 -label {Y (Hex)} \
    -radix hexadecimal /tb_execunit/TBY
add wave -noupdate -expand -group {DUT Signals} -height 30 -label Zero \
    /tb_execunit/TBZero
add wave -noupdate -expand -group {DUT Signals} -height 30 -label AltB \
    /tb_execunit/TBAltB
add wave -noupdate -expand -group {DUT Signals} -height 30 -label AltBu \
    /tb_execunit/TBAltBu

# Standard wave window config stuff
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 184
configure wave -valuecolwidth 120
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {795376 ps}

