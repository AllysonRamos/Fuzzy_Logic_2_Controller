module Elemento_menor_trapezio(Elemento1, Elemento2, saida);
input [31:0] Elemento1, Elemento2;
output reg [31:0] saida;
 
always @ (Elemento1, Elemento2)
if (Elemento1>=Elemento2)
saida <=Elemento2;
else saida <=Elemento1;
endmodule
