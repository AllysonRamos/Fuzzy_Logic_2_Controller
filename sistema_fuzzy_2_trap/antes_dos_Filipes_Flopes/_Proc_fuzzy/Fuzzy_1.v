module Fuzzy_1 (Srst, Entrada_01, Entrada_02, EN_REGRAS, saida_defuzzy, 
                clk_0, Sclk_int, SSequencia_regras, SReset_Memoria, SAtivo); 

//---------------------------<INPUTS>----------------------------------------------------------				 
input 		EN_REGRAS,clk_0,Srst;
input	[7:0] Entrada_01,Entrada_02;

//---------------------------<OUTPUTS>---------------------------------------------------------	
output 			Sclk_int, SReset_Memoria;
output	[7:0] saida_defuzzy;
output	[3:0] SSequencia_regras;
output	[5:0] SAtivo;

//---------------------------<WIRES>-----------------------------------------------------------
wire clk_int, rst, Reset_Inf;
wire [7:0] Input_01, Input_02;
wire [1:0] sel_1, sel_2;
wire [3:0] Regras;
wire [5:0] Ativo_UP;
wire [7:0] FOU_01_UP, FOU_02_UP, FOU_03_UP,FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,
           FOU_04_UP, FOU_05_UP, FOU_06_UP,FOU_04_LOW,FOU_05_LOW, FOU_06_LOW;
wire [7:0] saida_UP_1, saida_UP_2,  saida_UP_3, saida_LOW_1, saida_LOW_2, saida_LOW_3;
wire [15:0] saida_x_pos, saida_total;

//---------------------------<ASSIGNS>---------------------------------------------------------
assign Input_01 = Entrada_01;
assign Input_02 = Entrada_02;
assign Regras = {sel_1[1:0], sel_2[1:0]};
assign SSequencia_regras = Regras;
assign SReset_Memoria = Reset_Inf;
assign Sclk_int = clk_int;
assign SAtivo = Ativo_UP;

//---------------------------<MODULES>----------------------------------------------------------						
bloco_fuzzificador U1(Input_01, Input_02, clk_int, Srst, 
		 FOU_01_UP, FOU_02_UP, FOU_03_UP, FOU_01_LOW, FOU_02_LOW, FOU_03_LOW, 
		 FOU_04_UP, FOU_05_UP, FOU_06_UP, FOU_04_LOW, FOU_05_LOW, FOU_06_LOW,
       Ativo_UP);
		 
Unidade_controle_regras U2(clk_0, Srst, EN_REGRAS, Ativo_UP, {sel_1[1:0], sel_2[1:0]},
                           Reset_Inf, clk_int);
		 
inferencia U3(FOU_01_UP, FOU_02_UP,FOU_03_UP,FOU_04_UP,FOU_05_UP,
              FOU_06_UP, FOU_01_LOW, FOU_02_LOW, FOU_03_LOW, FOU_04_LOW, 
              FOU_05_LOW, FOU_06_LOW, saida_UP_2,  saida_UP_3,
              saida_LOW_1, saida_UP_1, saida_LOW_2, saida_LOW_3, Regras, clk_0, Reset_Inf);
				  
TR_defuzzy U4(saida_UP_1, saida_UP_2, saida_UP_3, saida_LOW_1, saida_LOW_2, saida_LOW_3, 
				  saida_defuzzy, clk_int, Srst);
				  
endmodule