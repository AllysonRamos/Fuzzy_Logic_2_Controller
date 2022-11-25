transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/Fuzzy_1.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/ffd.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/ffds.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/Unidade_controle_regras.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/soma_X_pos.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/soma_total.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/soma.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/mux_4CANAIS_4b.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/mux4b_U_reg.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/TR_defuzzy.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/Registrador_saida.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/Unidade_regras.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/inferencia.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/FOU.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/fuzzificador.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/compara_U_reg.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/compara_Maximo.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/codificador_inferencia.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/codificador.v}
vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/maquina_estados.v}

vlog -vlog01compat -work work +incdir+F:/Wanderson/Unifei/TFG/TFG\ Novo/Materiais\ dos\ professores/_Proc_fuzzy {F:/Wanderson/Unifei/TFG/TFG Novo/Materiais dos professores/_Proc_fuzzy/FOU_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  FOU_TB

add wave *
view structure
view signals
run -all
