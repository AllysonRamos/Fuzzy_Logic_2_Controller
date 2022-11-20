module soma_X_pos(FOU_0, FOU_1, FOU_2, saida);
input [8:0] FOU_0, FOU_1, FOU_2;
output [17:0] saida;
wire [17:0] FOU_0_X_pos, FOU_1_X_pos, FOU_2_X_pos;

parameter   POS_1 = 8'd1, POS_2 = 8'd127,  POS_3 = 8'd254; 
assign FOU_0_X_pos = POS_1*FOU_0;
assign FOU_1_X_pos = POS_2*FOU_1;
assign FOU_2_X_pos = POS_3*FOU_2;


assign saida = FOU_0_X_pos + FOU_1_X_pos + FOU_2_X_pos;
endmodule 