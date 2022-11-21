module fuzzificador (entrada, MF_01_UP, MF_01_LOW, MF_02_UP, MF_02_LOW, 
							MF_03_UP, MF_03_LOW, Ativo_1, Ativo_2, Ativo_3);

input [7:0] entrada;

output reg Ativo_1, Ativo_2, Ativo_3;
output reg [7:0] MF_01_UP, MF_01_LOW, MF_02_UP, MF_02_LOW, MF_03_UP, MF_03_LOW;

parameter A1, B1, C1, D1; // trapezio MF_01_UP 
parameter A2, B2, C2, D2; // trapezio MF_01_LOW 

parameter A3, B3, C3, D3; // trapezio MF_02_UP 
parameter A4, B4, C4, D4; // trapezio MF_02_LOW 

parameter A5, B5, C5, D5; // trapezio MF_03_UP 
parameter A6, B6, C6, D6; // trapezio MF_03_LOW 

always @ (entrada)
	begin
		if(entrada<=A1)
					MF_01_UP<=8'd0;
				else if(entrada<B1)
					MF_01_UP<=255*(entrada-A1)/(B1-A1);
				else if(entrada<=C1)
					MF_01_UP<=8'd255;
				else if(entrada<D1)
					MF_01_UP<=255*(D1-entrada)/(D1-C1);
				else if(entrada>=D1)
					MF_01_UP<=8'd0;
					
		if(entrada<=A2)
					MF_01_LOW<=8'd0;
				else if(entrada<B2)
					MF_01_LOW<=255*(entrada-A2)/(B2-A2);
				else if(entrada<=C2)
					MF_01_LOW<=8'd255;
				else if(entrada<D2)
					MF_01_LOW<=255*(D2-entrada)/(D2-C2);
				else if(entrada>=D2)
					MF_01_LOW<=8'd0;
					
		if(entrada<=A3)
					MF_02_UP<=8'd0;
				else if(entrada<B3)
					MF_02_UP<=255*(entrada-A3)/(B3-A3);
				else if(entrada<=C3)
					MF_02_UP<=8'd255;
				else if(entrada<D3)
					MF_02_UP<=255*(D3-entrada)/(D3-C3);
				else if(entrada>=D3)
					MF_02_UP<=8'd0;
					
		if(entrada<=A4)
					MF_02_LOW<=8'd0;
				else if(entrada<B4)
					MF_02_LOW<=255*(entrada-A4)/(B4-A4);
				else if(entrada<=C4)
					MF_02_LOW<=8'd255;
				else if(entrada<D4)
					MF_02_LOW<=255*(D4-entrada)/(D4-C4);
				else if(entrada>=D4)
					MF_02_LOW<=8'd0;
					
		if(entrada<=A5)
					MF_03_UP<=8'd0;
				else if(entrada<B5)
					MF_03_UP<=255*(entrada-A5)/(B5-A5);
				else if(entrada<=C5)
					MF_03_UP<=8'd255;
				else if(entrada<D5)
					MF_03_UP<=255*(D5-entrada)/(D5-C5);
				else if(entrada>=D5)
					MF_03_UP<=8'd0;
					
					
		if(entrada<=A6)
					MF_03_LOW<=8'd0;
				else if(entrada<B6)
					MF_03_LOW<=255*(entrada-A6)/(B6-A6);
				else if(entrada<=C6)
					MF_03_LOW<=8'd255;
				else if(entrada<D6)
					MF_03_LOW<=255*(D6-entrada)/(D6-C6);
				else if(entrada>=D6)
					MF_03_LOW<=8'd0;
			
	end
	
always @ (MF_01_UP)
	begin
		if(MF_01_UP >= 8'b1)
			Ativo_1 <= 1'b1;
		else
			Ativo_1 <= 1'b0;
	end
	
always @ (MF_02_UP)
	begin
		if(MF_02_UP >= 8'b1)
			Ativo_2 <= 1'b1;
		else
			Ativo_2 <= 1'b0;
	end
	
always @ (MF_03_UP)
	begin
		if(MF_03_UP >= 8'b1)
			Ativo_3 <= 1'b1;
		else
			Ativo_3 <= 1'b0;
	end
endmodule