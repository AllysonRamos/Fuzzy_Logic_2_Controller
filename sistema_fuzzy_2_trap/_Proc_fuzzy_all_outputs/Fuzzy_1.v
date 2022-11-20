module Fuzzy_1 (Srst, Entrada_01, Entrada_02, EN_REGRAS, saida_defuzzy, 
                clk_0, Sclk_int, SSequencia_regras, SReset_Memoria, SAtivo,
					 FOU_01_UP, FOU_02_UP, FOU_03_UP,FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,
					 FOU_04_UP, FOU_05_UP, FOU_06_UP,FOU_04_LOW,FOU_05_LOW, FOU_06_LOW,
					 saida_UP_0, saida_LOW_0, saida_UP_1, saida_LOW_1, saida_UP_2, saida_LOW_2); 

input  [7:0] Entrada_01,Entrada_02; // Extra
input  EN_REGRAS,clk_0,Srst;

output [7:0] saida_defuzzy;
output Sclk_int, SReset_Memoria;
output [3:0] SSequencia_regras;
output [5:0] SAtivo;
output [7:0] FOU_01_UP, FOU_02_UP, FOU_03_UP,FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,
             FOU_04_UP, FOU_05_UP, FOU_06_UP,FOU_04_LOW,FOU_05_LOW, FOU_06_LOW;
				 
output [7:0] saida_UP_0, saida_UP_1,  saida_UP_2, saida_LOW_0, saida_LOW_1, saida_LOW_2;

//wire [8:0] DADOS_A, DADOS_B, DADOS_C,DADOS_D, DADOS_E, DADOS_F, DADOS_G, DADOS_H,DADOS_I, DADOS_J;
//wire [7:0] w_saida;
//wire clock_gerador_funcao;

wire [7:0] Input_01, Input_02;

wire ENA_Locked, rst, Reset_Inf;

wire [1:0] sel_1, sel_2;

wire [3:0] Regras;
//wire       EN_FF_FOU, sel_mux_2CANAIS, Reset_Memoria, 
wire		  clk_int;
//wire       Sequencia_regras;
//wire [2:0] codigo_pos_mem;
wire [5:0] Ativo_UP;

wire [7:0] FOU_01_UP, FOU_02_UP, FOU_03_UP,FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,
           FOU_04_UP, FOU_05_UP, FOU_06_UP,FOU_04_LOW,FOU_05_LOW, FOU_06_LOW;
			  
wire [7:0] saida_UP_0, saida_UP_1,  saida_UP_2, saida_LOW_0, saida_LOW_1, saida_LOW_2;

wire [15:0] saida_x_pos, saida_total;

assign Regras = {sel_1[1:0], sel_2[1:0]};
assign SSequencia_regras = Regras;

assign SReset_Memoria = Reset_Inf;

assign Input_01 = Entrada_01; // EXTRA

assign Input_02 = Entrada_02; // EXTRA

assign Sclk_int = clk_int;

assign SAtivo = Ativo_UP;

//assign saida_UP_0 = sinf_UP_0;
//assign saida_LOW_0 = sinf_LOW_0;
//assign saida_UP_1 = sinf_UP_1;
//assign saida_LOW_1 = sinf_LOW_1;
//assign saida_UP_2 = sinf_UP_2;
//assign saida_LOW_2 = sinf_LOW_2;
									
FOU U1(Input_01, Input_02, clk_0, clk_int, Srst, FOU_01_UP, FOU_02_UP, FOU_03_UP,  
       FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,FOU_04_UP,FOU_05_UP,
       FOU_06_UP,FOU_04_LOW, FOU_05_LOW, FOU_06_LOW,
       Ativo_UP);
		 
Unidade_controle_regras U2(clk_0, Srst, EN_REGRAS, Ativo_UP, {sel_1[1:0], sel_2[1:0]},
                           Reset_Inf, clk_int);
		 
inferencia U3(FOU_01_UP, FOU_02_UP,FOU_03_UP,FOU_04_UP,FOU_05_UP,
              FOU_06_UP, FOU_01_LOW, FOU_02_LOW, FOU_03_LOW, FOU_04_LOW, 
              FOU_05_LOW, FOU_06_LOW, saida_UP_1,  saida_UP_2,
              saida_LOW_0, saida_UP_0, saida_LOW_1, saida_LOW_2, Regras, clk_0, Reset_Inf);
				  
TR_defuzzy U4(saida_UP_0, saida_UP_1,  saida_UP_2,saida_LOW_0, 
              saida_LOW_1, saida_LOW_2, saida_defuzzy,
              clk_0, clk_int, Srst);
				  
endmodule