onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {DUT Signals}
add wave -noupdate -height 45 -label X -radix decimal /tb_magcomp/TBX
add wave -noupdate -height 45 -label Y -radix decimal -radixshowbase 0 /tb_magcomp/TBY
add wave -noupdate -height 45 -label EQ /tb_magcomp/TBEQ
add wave -noupdate -height 45 -label GT /tb_magcomp/TBGT
add wave -noupdate -divider {Expected Outputs}
add wave -noupdate -height 45 -label EQ_true /tb_magcomp/TBEQ_true
add wave -noupdate -height 45 -label GT_true /tb_magcomp/TBGT_true
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {357700 ps}
