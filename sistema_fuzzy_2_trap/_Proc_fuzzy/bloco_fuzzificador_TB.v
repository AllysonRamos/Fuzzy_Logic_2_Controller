`timescale 1ns/10ps
module bloco_fuzzificador_TB;
	
	reg CLK, RESET, EN_Entrada_FOU;
	reg [7:0] Input_01,Input_02;
	wire [7:0] FOU_01_UP, FOU_02_UP, FOU_03_UP, FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,
FOU_04_UP, FOU_05_UP, FOU_06_UP, FOU_04_LOW, FOU_05_LOW, FOU_06_LOW;
	wire [5:0] Ativo_UP;

	bloco_fuzzificador DUT(
		.CLK(CLK),
		.RESET(RESET),
		.Input_01(Input_01),
		.Input_02(Input_02),
		.FOU_01_UP(FOU_01_UP),
		.FOU_02_UP(FOU_02_UP),
		.FOU_03_UP(FOU_03_UP),
		.FOU_01_LOW(FOU_01_LOW),
		.FOU_02_LOW(FOU_02_LOW),
		.FOU_03_LOW(FOU_03_LOW),
		.FOU_04_UP(FOU_04_UP),
		.FOU_05_UP(FOU_05_UP),
		.FOU_06_UP(FOU_06_UP),
		.FOU_04_LOW(FOU_04_LOW),
		.FOU_05_LOW(FOU_05_LOW),
		.FOU_06_LOW(FOU_06_LOW),
		.Ativo_UP(Ativo_UP)
	);
	
	initial begin 
	CLK = 0;
	end

	always begin
		#5 CLK = ~CLK;
	end
	
	initial begin
		RESET = 0;
		//EN_Entrada_FOU = 1;
		Input_01 = 0;
		Input_02 = 0;
		#10;
		//in = 40;
		//#100;
		//in = 1000;
		//#100;
	end
	
	always begin
		#10 
		Input_01 = Input_01+1;
		Input_02 = Input_02+1;
	end
	
	initial begin
		#5000 $stop;
	end

endmodule
