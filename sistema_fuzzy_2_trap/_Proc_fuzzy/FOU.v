module FOU (Input_01,Input_02, EN_Entrada_FOU, CLK, RESET, FOU_01_UP, FOU_02_UP, FOU_03_UP, 
FOU_01_LOW, FOU_02_LOW, FOU_03_LOW, FOU_04_UP, FOU_05_UP, FOU_06_UP,FOU_04_LOW, FOU_05_LOW, FOU_06_LOW,
Ativo_UP);

input [7:0] Input_01, Input_02;

input EN_Entrada_FOU, CLK, RESET;

wire [7:0] entrada_01,entrada_02;

wire Ativo_1, Ativo_2, Ativo_3, Ativo_4, Ativo_5, Ativo_6;

output [7:0] FOU_01_UP, FOU_02_UP, FOU_03_UP, FOU_01_LOW, FOU_02_LOW, FOU_03_LOW, FOU_04_UP, FOU_05_UP, 
FOU_06_UP,FOU_04_LOW, FOU_05_LOW, FOU_06_LOW;

output [5:0] Ativo_UP;

ffds ENTRADA01(entrada_01, Input_01, EN_Entrada_FOU, CLK, RESET);
ffds ENTRADA02(entrada_02, Input_02, EN_Entrada_FOU, CLK, RESET);

//---------------------------<MEMBERSHIP FUNCTION FOR INPUT_1>---------------------------

defparam in1.A1=8'd0,   in1.B1=8'd1,   in1.C1=8'd51,  in1.D1=8'd114; // Trapézio FOU_1_UP
defparam in1.A2=8'd0,   in1.B2=8'd1,   in1.C2=8'd51,  in1.D2=8'd100; // Trapézio FOU_1_LOW
defparam in1.A3=8'd5,   in1.B3=8'd77,  in1.C3=8'd153, in1.D3=8'd222; // Trapézio FOU_2_UP
defparam in1.A4=8'd18,  in1.B4=8'd77,  in1.C4=8'd153, in1.D4=8'd209; // Trapézio FOU_2_LOW
defparam in1.A5=8'd100, in1.B5=8'd179, in1.C5=8'd254, in1.D5=8'd255; // Trapézio FOU_3_UP
defparam in1.A6=8'd125, in1.B6=8'd179, in1.C6=8'd254, in1.D6=8'd255;  // Trapézio FOU_3_LOW

fuzzificador in1 (entrada_01, FOU_01_UP,  FOU_01_LOW, FOU_02_UP, FOU_02_LOW, FOU_03_UP, FOU_03_LOW, Ativo_1,
Ativo_2, Ativo_3);

//---------------------------<MEMBERSHIP FUNCTION FOR INPUT_2>---------------------------

defparam in2.A1=8'd0,   in2.B1=8'd1,   in2.C1=8'd77,  in2.D1=8'd148; // Trapézio FOU_4_UP
defparam in2.A2=8'd0,   in2.B2=8'd1,   in2.C2=8'd77,  in2.D2=8'd133; // Trapézio FOU_4_LOW
defparam in2.A3=8'd31,  in2.B3=8'd102, in2.C3=8'd179, in2.D3=8'd250; // Trapézio FOU_5_UP
defparam in2.A4=8'd46,  in2.B4=8'd102, in2.C4=8'd179, in2.D4=8'd235; // Trapézio FOU_5_LOW
defparam in2.A5=8'd153, in2.B5=8'd230, in2.C5=8'd254, in2.D5=8'd255; // Trapézio FOU_6_UP
defparam in2.A6=8'd168, in2.B6=8'd230, in2.C6=8'd254, in2.D6=8'd255;  // Trapézio FOU_6_LOW

fuzzificador in2 (entrada_02, FOU_04_UP, FOU_04_LOW, FOU_05_UP, FOU_05_LOW, FOU_06_UP, FOU_06_LOW, Ativo_4,
Ativo_5, Ativo_6);
		
assign Ativo_UP = {Ativo_1, Ativo_2, Ativo_3,
                   Ativo_4, Ativo_5, Ativo_6};  											 
											 
////---------------------------Ativo entrada x1------------------------------------------
//
//geraSativo detecta_1(FOU_01_UP, Ativo_UP_1); 
//geraSativo detecta_2(FOU_02_UP, Ativo_UP_2); 
//geraSativo detecta_3(FOU_03_UP, Ativo_UP_3); 
// 
////---------------------------Ativo entrada x2------------------------------------------
//
//geraSativo detecta_4(FOU_04_UP, Ativo_UP_4); 
//geraSativo detecta_5(FOU_05_UP, Ativo_UP_5); 
//geraSativo detecta_6(FOU_06_UP, Ativo_UP_6); 

endmodule



