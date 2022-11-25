module Num_denom_trapezio (X, A, B, C, D, Numerador_1, Denominador_1, Numerador_2, Denominador_2);
input [7:0] X, A, B, C,D;
output [31:0]  Numerador_1, Denominador_1, Numerador_2, Denominador_2;

wire [31:0] nx, na, nb, nc, nd;

assign nx = {16'd0, X};
assign na = {16'd0, A};
assign nb = {16'd0, B};
assign nc = {16'd0, C};
assign nd = {16'd0, D};

assign Numerador_1 = nx-na;
assign Denominador_1 = nb-na;
assign Numerador_2 = nd-nx;
assign Denominador_2 = nd-nc;

endmodule


/*============================================================================================================
 Este programa tem a finalidade de criar os numeradores e denominadores  para a função triangular:
              --------------------------------------------------------------
				   trimf (X;A,B,C) = max(min{[(x-a)/(b-a)],[1],[(d-x)/(d-c)],[0]} 
				  --------------------------------------------------------------
Onde: Numerador_1 = (x-a);
      Denominador_1 = (b-a);
		Numerador_2 = (d-x);
		Denominador_2 = (d-c);  
		                                           ________ 
		                                          /        \
	                                            /          \
                                              /            \	
															/              \ 
		                                      a    b      c    d
===============================================================================================================*/	
