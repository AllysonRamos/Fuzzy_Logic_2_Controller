module Trapezio(X,A,B,C,D,TOPO, saida);
input [7:0] X, A,B,C,D, TOPO;
output [31:0] saida;

wire [31:0]  Nume_1, Nume_2, Deno_1, Deno_2, Nume_1_Mult, Nume_2_Mult;
wire [31:0]  OUT_REF, saida_1, Elemento_1, Elemento_2;
wire [31:0] expandTOPO;


assign expandTOPO = {24'd0,TOPO};

range_x_trapezio I1 (X, A, D, OUT_REF);

Num_denom_trapezio I2 (OUT_REF, A, B, C, D, Nume_1, Deno_1, Nume_2, Deno_2);

Numerador_Multiplicado_trapezio I3 (Nume_1, Nume_2, Nume_1_Mult, Nume_2_Mult);

Elementos_trapezio I4 (Nume_1_Mult, Nume_2_Mult, Deno_1, Deno_2, Elemento_1, Elemento_2);

Elemento_menor_trapezio I5 (Elemento_1, Elemento_2, saida_1);

descarte_topo_trapezio I6 ( saida_1, expandTOPO, saida);

endmodule

