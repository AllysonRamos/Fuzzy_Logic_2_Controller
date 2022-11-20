module inferencia ( FOU_1_UP, FOU_2_UP,FOU_3_UP,FOU_4_UP,FOU_5_UP,FOU_6_UP,
FOU_1_LOW, FOU_2_LOW, FOU_3_LOW, FOU_4_LOW, FOU_5_LOW, FOU_6_LOW, 
saida_UP_1,  saida_UP_2, saida_LOW_0, saida_UP_0, saida_LOW_1, saida_LOW_2, 
Sequencia_regras, clk, rst, 
EN_Cod_Mem);

input [7:0] FOU_1_UP, FOU_2_UP,FOU_3_UP,FOU_4_UP,FOU_5_UP,FOU_6_UP,
FOU_1_LOW, FOU_2_LOW, FOU_3_LOW, FOU_4_LOW, FOU_5_LOW, FOU_6_LOW;

input [3:0] Sequencia_regras;
input clk, rst, EN_Cod_Mem;
output [7:0] saida_UP_0, saida_LOW_0, saida_UP_1, saida_LOW_1, saida_UP_2, saida_LOW_2;
wire [2:0] codigo_pos_mem; //Pos_men, Mux_8Canais;
wire [1:0] sel_1, sel_2;


Unidade_regras UP(FOU_1_UP, FOU_2_UP,FOU_3_UP,FOU_4_UP,FOU_5_UP,FOU_6_UP, clk, rst, Sequencia_regras[1:0], Sequencia_regras[3:2], Sequencia_regras, codigo_pos_mem, saida_UP_0, saida_UP_1, saida_UP_2);
Unidade_regras LOW(FOU_1_LOW, FOU_2_LOW, FOU_3_LOW, FOU_4_LOW, FOU_5_LOW, FOU_6_LOW, clk, rst, Sequencia_regras[1:0], Sequencia_regras[3:2], Sequencia_regras, codigo_pos_mem, saida_LOW_0, saida_LOW_1, saida_LOW_2);

codificador Cod(codigo_pos_mem, Sequencia_regras);
endmodule
