transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/ffd.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/ffds.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Unidade_controle_regras.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/soma_X_pos.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/soma_total.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/soma.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/mux_4CANAIS_4b.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/mux4b_U_reg.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/TR_defuzzy.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Registrador_saida.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Unidade_regras.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Trapezio.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/range_x_trapezio.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Numerador_Multiplicado_trapezio.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Num_denom_trapezio.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/inferencia.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/geraSativo.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Fuzzy_1.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/FOU.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Elementos_trapezio.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Elemento_menor_trapezio.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/descarte_topo_trapezio.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/compara_U_reg.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/compara_Maximo.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/codificador_inferencia.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/codificador.v}
vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/maquina_estados.v}

vlog -vlog01compat -work work +incdir+C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy {C:/Users/lyson/OneDrive/Documentos/GitHub/Fuzzy_Logic_2_Controller/Codigo_enxugado_Moreno/_Proc_fuzzy/Fuzzy_1_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Fuzzy_1_tb

add wave *
view structure
view signals
run -all
