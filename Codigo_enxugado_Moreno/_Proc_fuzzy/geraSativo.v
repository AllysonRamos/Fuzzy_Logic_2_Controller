module geraSativo (sinal_UP, Ativo);

input [7:0] sinal_UP;
output Ativo;

reg sAtivo;

assign Ativo = sAtivo;

always @(sinal_UP)
begin 
     if   (sinal_UP >= 8'b00000001) sAtivo <= 1'b1;
     else sAtivo <= 1'b0;
end

endmodule