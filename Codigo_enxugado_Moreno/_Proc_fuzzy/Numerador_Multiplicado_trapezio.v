/*============================================================================================================
  Este programa tem a finalidade de multiplicar o resultado do numerado calculado no 
 programa "triangulo" por 100. 
  Essa multiplicação é necessária para que o resultado seja expressado entre 0 e 100
 e não entre um numero fracionário entre 0 e 1.
 
 ===============================================================================================================*/	


module Numerador_Multiplicado_trapezio (Numerador_1, Numerador_2, Numerador_1_Mult, Numerador_2_Mult);
input [31:0] Numerador_1, Numerador_2;
output [31:0]  Numerador_1_Mult, Numerador_2_Mult;

parameter K = 8'd100; //100 decimal  

assign Numerador_1_Mult = Numerador_1*K;
assign Numerador_2_Mult = Numerador_2*K;

endmodule
