module TR_defuzzy(FOU_1_UP, FOU_2_UP, FOU_3_UP, FOU_1_LOW, FOU_2_LOW, FOU_3_LOW, saida, 
clk, EN_SCLK, rst);

input [7:0] FOU_1_UP, FOU_2_UP,FOU_3_UP, FOU_1_LOW, FOU_2_LOW, FOU_3_LOW;

input clk, EN_SCLK, rst;

output [7:0] saida;

wire [7:0] saida_memoria;
wire [17:0] saida_x_pos;
wire [10:0] saida_total;											//alterada quantidade de bits 19/11/22
wire [31:0] s_memoria;
wire [8:0] FOU_1, FOU_2,FOU_3;

soma s1(FOU_1_UP, FOU_2_UP,FOU_3_UP,
FOU_1_LOW, FOU_2_LOW, FOU_3_LOW, 
FOU_1, FOU_2,FOU_3);

soma_X_pos x1(FOU_1, FOU_2,FOU_3, saida_x_pos);

soma_total x2(FOU_1, FOU_2,FOU_3, saida_total);

assign s_memoria = saida_x_pos / saida_total;				//alterado posicionamento 19/11/22
assign saida_memoria = s_memoria[7:0];							//alterado posicionamento 19/11/22

//ffd ff1(saida, saida_memoria, clk, EN_SCLK, rst);
ffd_defuzzy ff1 (saida, saida_memoria, clk, EN_SCLK, rst);

endmodule
