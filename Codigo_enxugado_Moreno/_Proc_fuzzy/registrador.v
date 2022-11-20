module registrador(saida, entrada, clock, reset, EN);
input [15:0] entrada;
input clock, reset, EN;
output reg [15:0] saida;

always @(negedge clock or posedge reset)
begin
if (reset) saida <= 16'h00;
else if (EN) saida <= entrada;
end

endmodule
