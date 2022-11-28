`timescale 100ns/100ps

module Fuzzy_1_tb;

reg			clk_0, RESET_MEM, EN_REGRAS, Srst;
reg	[7:0] Entrada_01, Entrada_02;
	 
wire       SReset_Memoria, Sclk_int; 
wire	[5:0] FOU_ATIVO;
wire	[7:0] saida_defuzzy;
wire	[3:0] SSequencia_regras;

integer f;
integer i,j;

Fuzzy_1 DUT (Srst, Entrada_01, Entrada_02, EN_REGRAS, saida_defuzzy, clk_0, Sclk_int,
				SSequencia_regras, SReset_Memoria, FOU_ATIVO);  

    initial begin
       clk_0 = 1'b0;
	    EN_REGRAS   = 1'b1;
	    Srst        = 1'b1;
	    RESET_MEM   = 1'b1;
       
		 #65 Srst  = 1'b0; 
		 RESET_MEM = 1'b0;
		 
		//Entrada_01 = 8'd112;	//HABILITE PARA TESTE COM ENTRADAS FIXAS
		//Entrada_02 = 8'd160;
		
    end
	 
	always
		begin
			//#15 clk_0 = 1'b1;
			//#20 clk_0 = 1'b0; 
			#80 clk_0 = 1'b0; 
		end
	 
	initial begin

		f = $fopen("output.txt","w");		//Open output file
		
		for (i=0;i<257;i=i+16) begin
			for (j=0;j<257;j=j+16) begin
		
				Entrada_01 = i;  
				Entrada_02 = j;
			
				if(i<1) Entrada_01=1;
				if(i>254) Entrada_01=254;
				if(j<1) Entrada_02=1;
				if(j>254) Entrada_02=254;
			
				#1000 $fwrite(f,"%b\n",saida_defuzzy);		//Save Output data File
			end
		end
	
		$fclose(f);
		$finish;	
	end
	  
/*HABILITE PARA DEFINIR UM TEMPO DE PARADA PARA A SIMULAÇÃO	
	initial begin
		#2500 $stop;
	end
*/

endmodule
