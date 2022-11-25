module Unidade_controle_regras (clk, rst, EN_REGRAS, FOU_ativo, Sequencia_regras, 
										  Reset_Inf, clk_int, estado);

//---------------------------<INPUTS>----------------------------------------------------------
input clk, rst, EN_REGRAS;
input [5:0] FOU_ativo;

//---------------------------<OUTPUTS>---------------------------------------------------------	
output Reset_Inf, clk_int;
output [3:0] Sequencia_regras;
output [3:0] estado; // inserido para teste	- nao esta presente no modulo principal

//---------------------------<WIRES>-----------------------------------------------------------
wire QT_1, QT_2, QT_4R, Reset_QT_2, Reset_QT_4R;
wire [1:0] sel;
wire [5:0] saida_4R, saida_2R, saida_1R, W_Sequencia_regras;

//---------------------------<ASSIGNS>---------------------------------------------------------
assign Sequencia_regras = W_Sequencia_regras[3:0];
assign clk_int = W_Sequencia_regras[5];
assign Reset_Inf = W_Sequencia_regras[4];

//---------------------------<MODULES>----------------------------------------------------------
maquina_estados I1 (clk, FOU_ativo, rst, EN_REGRAS, W_Sequencia_regras, estado);

endmodule



