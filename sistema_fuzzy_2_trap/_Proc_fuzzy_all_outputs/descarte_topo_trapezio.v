module descarte_topo_trapezio( entrada, TOPO, saida);
input [31:0] entrada, TOPO;
output reg [31:0] saida;


always @ (entrada,TOPO)
if (entrada>TOPO)
saida <= TOPO;
else saida <= entrada;
endmodule
