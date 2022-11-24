transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Fuzzy_1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/sistema_fuzzy_2_trap/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/sistema_fuzzy_2_trap/_Proc_fuzzy/Fuzzy_1_tb.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  Fuzzy_1_tb

add wave *
view structure
view signals
run -all
