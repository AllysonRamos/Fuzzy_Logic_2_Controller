module soma(FOU_0_UP, FOU_1_UP, FOU_2_UP,
FOU_0_LOW, FOU_1_LOW, FOU_2_LOW,
FOU_0, FOU_1, FOU_2);

input [7:0] FOU_0_UP, FOU_1_UP, FOU_2_UP,
FOU_0_LOW, FOU_1_LOW, FOU_2_LOW;

output [7:0] FOU_0, FOU_1, FOU_2;

assign FOU_0 = FOU_0_UP + FOU_0_LOW;
assign FOU_1 = FOU_1_UP + FOU_1_LOW;
assign FOU_2 = FOU_2_UP + FOU_2_LOW;


endmodule
