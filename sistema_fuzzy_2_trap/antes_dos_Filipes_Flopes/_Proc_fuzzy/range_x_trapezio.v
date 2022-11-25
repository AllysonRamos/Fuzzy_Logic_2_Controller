//Limita os valores de X entre A e D

module range_x_trapezio (inp_x, A, D, out_x);
input [7:0] inp_x, A, D;
output reg [7:0] out_x;

 
always @ (inp_x, A, D)
if (inp_x < A)
out_x <= A;
else if (inp_x > D) 
out_x <= D;
else out_x <= inp_x;
endmodule
