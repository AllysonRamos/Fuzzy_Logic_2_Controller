module Registrador_saida (Entrada, Ent_regra, saida_0, saida_1, saida_2, clk, rst);
input clk, rst;
input [7:0] Entrada;
input [3:0] Ent_regra;
output[7:0] saida_0, saida_1, saida_2;
wire [6:0] codigo;

//ffd (q, D, EN, clk, rst);
ffd   zero(saida_0, Entrada, codigo[0], clk, rst);
ffd     um(saida_1, Entrada, codigo[1], clk, rst);
ffd   dois(saida_2, Entrada, codigo[2], clk, rst);
//ffd   tres(saida_3, Entrada, codigo[3], clk, rst);
//ffd quatro(saida_4, Entrada, codigo[4], clk, rst);
//ffd  cinco(saida_5, Entrada, codigo[5], clk, rst);
//ffd  seis (saida_6, Entrada, codigo[6], clk, rst);

codificador_inferencia cod(codigo, Ent_regra, rst);

endmodule
