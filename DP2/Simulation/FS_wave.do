onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {DUT Signals}
add wave -noupdate -expand -group {DUT Signals} -divider Inputs
add wave -noupdate -expand -group {DUT Signals} -height 45 -label {A (Hex)} -radix hexadecimal /tb_adder/TBA
add wave -noupdate -expand -group {DUT Signals} -height 45 -label {B (Hex)} -radix hexadecimal /tb_adder/TBB
add wave -noupdate -expand -group {DUT Signals} -height 45 -label Cin /tb_adder/TBCin
add wave -noupdate -expand -group {DUT Signals} -divider Outputs
add wave -noupdate -expand -group {DUT Signals} -height 45 -label {Sum (Hex)} -radix hexadecimal /tb_adder/TBS
add wave -noupdate -expand -group {DUT Signals} -height 45 -label Cout /tb_adder/TBOvfl
add wave -noupdate -expand -group {DUT Signals} -height 45 -label Overflow /tb_adder/TBCout
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
