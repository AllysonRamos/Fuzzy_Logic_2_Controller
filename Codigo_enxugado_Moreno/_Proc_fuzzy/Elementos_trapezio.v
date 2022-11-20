/*============================================================================================================
 Este programa tem a finalidade de realizar a divisão dos numeradores e denominadores  para a função trapezoidal:
              --------------------------------------------------------------
				  mudar* trimf (X;A,B,C) = max(min{[(x-a)/(b-a)],[(c-x)/(c-b)],[0]} 
				  --------------------------------------------------------------
Onde: Numerador_1 = (x-a);
      Denominador_1 = (b-a);
		Numerador_2 = (d-x);
		Denominador_2 = (d-c);  
                                                /---------\
	                                           /           \
                                              /             \	
												 /               \ 
		                                      a  b         c  d
O numerador utilizado é o que foi no multiplicado pro 100 no programa "trapezio". 
Essa multiplicação foi necessária para que o resultado fosse expressado entre 0 e 100
e não entre um numero fracionário entre 0 e 1 no resultado deste programa.
===============================================================================================================*/	
module Elementos_trapezio (Numerador_1_Mult, Numerador_2_Mult, Denominador_1, Denominador_2, Elemento_1, Elemento_2);
input [31:0] Numerador_1_Mult, Numerador_2_Mult, Denominador_1, Denominador_2;
output [31:0]  Elemento_1, Elemento_2;

assign Elemento_1 = Numerador_1_Mult/Denominador_1;
assign Elemento_2 = Numerador_2_Mult/Denominador_2;


endmodule
