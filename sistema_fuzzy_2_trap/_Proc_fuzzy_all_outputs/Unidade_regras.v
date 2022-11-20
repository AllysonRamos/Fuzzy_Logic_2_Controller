module Unidade_regras (FOU_01, FOU_02, FOU_03, FOU_04, FOU_05, FOU_06, clk, rst, sel_1, sel_2, Pos_men, Mux_8Canais, saida_0, saida_1, saida_2);

input [7:0] FOU_01, FOU_02, FOU_03, FOU_04, FOU_05, FOU_06;

input [1:0] sel_1, sel_2;

input [1:0] Mux_8Canais; // alterado 14/09/2021
input [3:0] Pos_men;
input clk, rst;

output [7:0] saida_0, saida_1, saida_2;

wire [7:0] W1,W2, Q1, Q2, W_Min, W_out_min_max, W_out_min, saida_mux;

mux4b_U_reg A(FOU_04, FOU_05, FOU_06, W2, sel_1);
mux4b_U_reg B(FOU_01, FOU_02, FOU_03, W1, sel_2);

compara_U_reg minimo(W1,W2,W_out_min);


compara_Maximo U2(W_out_min, saida_mux, W_out_min_max);


Registrador_saida U3(W_out_min_max, Pos_men, saida_0, saida_1, saida_2 ,clk, rst);

mux_4CANAIS_4b  U4(saida_0, saida_1, saida_2, saida_mux, Mux_8Canais); //Mux_8Canais alterar


endmodule

