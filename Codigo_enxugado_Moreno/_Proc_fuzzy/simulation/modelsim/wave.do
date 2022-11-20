onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {RESET_MEM SIMULADO_BIT_EXTERNO} /Fuzzy_1_tb/RESET_MEM
add wave -noupdate -group {EN_REGRAS SIMULADO_BIT_EXTERNO} /Fuzzy_1_tb/EN_REGRAS
add wave -noupdate /Fuzzy_1_tb/Srst
add wave -noupdate -group CLK_SIMULADO /Fuzzy_1_tb/clk_0
add wave -noupdate -group CLK_SIMULADO /Fuzzy_1_tb/clk_1
add wave -noupdate -group ENTRADA /Fuzzy_1_tb/Entrada_01
add wave -noupdate -group ENTRADA /Fuzzy_1_tb/Entrada_02
add wave -noupdate /Fuzzy_1_tb/SReset_Memoria
add wave -noupdate /Fuzzy_1_tb/Sclk_int
add wave -noupdate -group {FUNCOES_QUE_VAO_SER_ATIVAS PELO SEQUENCIA_REGRAS} /Fuzzy_1_tb/FOU_ATIVO
add wave -noupdate -group {VALOR CRISP DE SAIDA RELACIONADO COM A ENTRADA X1 E X2} /Fuzzy_1_tb/saida_defuzzy
add wave -noupdate -group {A SELECAO VAI LÁ JOGA NO MUX E ATIVA AS FUNCOES QUE ESTAO NO FOU_ATIVO} /Fuzzy_1_tb/SSequencia_regras
add wave -noupdate -group {SSAIDA LIGACAO ENTRE INFERENCIA E TR_DEFUZZY} /Fuzzy_1_tb/Ssaida_UP_0
add wave -noupdate -group {SSAIDA LIGACAO ENTRE INFERENCIA E TR_DEFUZZY} /Fuzzy_1_tb/Ssaida_UP_1
add wave -noupdate -group {SSAIDA LIGACAO ENTRE INFERENCIA E TR_DEFUZZY} /Fuzzy_1_tb/Ssaida_UP_2
add wave -noupdate -group {SSAIDA LIGACAO ENTRE INFERENCIA E TR_DEFUZZY} /Fuzzy_1_tb/Ssaida_LOW_0
add wave -noupdate -group {SSAIDA LIGACAO ENTRE INFERENCIA E TR_DEFUZZY} /Fuzzy_1_tb/Ssaida_LOW_1
add wave -noupdate -group {SSAIDA LIGACAO ENTRE INFERENCIA E TR_DEFUZZY} /Fuzzy_1_tb/Ssaida_LOW_2
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_01_UP
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_02_UP
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_03_UP
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_01_LOW
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_02_LOW
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_03_LOW
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_04_UP
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_05_UP
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_06_UP
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_04_LOW
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_05_LOW
add wave -noupdate -group {FUNCOES DE PERTINENCIA} /Fuzzy_1_tb/sFOU_06_LOW
add wave -noupdate -group {FUNÇOES CONSEQUENTES} /Fuzzy_1_tb/SFOU_1
add wave -noupdate -group {FUNÇOES CONSEQUENTES} /Fuzzy_1_tb/SFOU_2
add wave -noupdate -group {FUNÇOES CONSEQUENTES} /Fuzzy_1_tb/SFOU_3
add wave -noupdate /Fuzzy_1_tb/Ssaida_x_pos
add wave -noupdate /Fuzzy_1_tb/Ssaida_total
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 251
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
WaveRestoreZoom {0 ps} {1012498 ps}
