module soma_total(FOU_0, FOU_1, FOU_2, Soma_Total);
input [8:0] FOU_0, FOU_1, FOU_2;
output [9:0] Soma_Total;

//wire [7:0] somatotal;

assign Soma_Total = FOU_0[8:0] + FOU_1[8:0] + FOU_2[8:0];

//assign Soma_Total = {somatotal,8'd0};

endmodule 