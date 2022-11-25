module soma_total(FOU_0, FOU_1, FOU_2, Soma_Total);

input [8:0] FOU_0, FOU_1, FOU_2;

output [10:0] Soma_Total;					//quantidade de bits alterada dia 19/11

assign Soma_Total = FOU_0[8:0] + FOU_1[8:0] + FOU_2[8:0];

endmodule 