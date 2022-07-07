transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {alarme.vho}

vcom -93 -work work {C:/LSD-Final/tb_alarme.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  tb_alarme

add wave *
view structure
view signals
run -all
