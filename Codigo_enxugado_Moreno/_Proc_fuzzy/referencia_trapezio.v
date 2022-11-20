module referencia_trapezio (A,B,C,D, TOPO);
output [7:0] A, B, C,D, TOPO;

/* Primeira configuracao:
assign A = 8'd120; 
assign B = 8'd130; 
assign C = 8'd140; 
assign D = 8'd170;*/

/* Segunda configuracao:
assign A = 8'd5;
assign B = 8'd77;
assign C = 8'd153;
assign D = 8'd222;*/

//Terceira configuracao:
assign A = 8'd35;
assign B = 8'd55;
assign C = 8'd65;
assign D = 8'd84;

assign TOPO = 8'd100; //100 decimal

endmodule

/*============================================================================================================
 Este programa tem a finalidade de definir as variáveis a, b, c e d:
               
		                                           _________ 
		                                          /         \
	                                            /           \
                                              /             \	
															/               \ 
		                                      a    b       c    d
===============================================================================================================*/
