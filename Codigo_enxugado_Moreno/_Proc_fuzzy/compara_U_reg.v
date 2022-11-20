module compara_U_reg  (A,B,S);
input [7:0] A,B;
output [7:0] S;
assign S =(A<B)?A:B;
endmodule
