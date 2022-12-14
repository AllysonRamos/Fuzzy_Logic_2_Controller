`timescale 1ns / 1ps

module Fuzzy_1_tb;

    reg  RESET_MEM, EN_REGRAS, Srst;
    reg  clk_0;
    reg  [7:0] Entrada_01, Entrada_02;
	 
    wire       SReset_Memoria, Sclk_int; 
    wire [5:0] FOU_ATIVO;
    wire [7:0] saida_defuzzy;
    wire [3:0] SSequencia_regras;
    wire [7:0] Ssaida_UP_0, Ssaida_UP_1,  Ssaida_UP_2;
    wire [7:0] Ssaida_LOW_0, Ssaida_LOW_1, Ssaida_LOW_2;
	 wire [7:0] sFOU_01_UP, sFOU_02_UP, sFOU_03_UP, sFOU_01_LOW,
					sFOU_02_LOW, sFOU_03_LOW, sFOU_04_UP, sFOU_05_UP, sFOU_06_UP,
					sFOU_04_LOW, sFOU_05_LOW, sFOU_06_LOW;
					//, SFOU_1, SFOU_2, SFOU_3;
//    wire [15:0] Ssaida_x_pos, Ssaida_total; 

    initial begin
       clk_0 = 1'b0;
	    EN_REGRAS   = 1'b1;
	    Srst        = 1'b1;
	    RESET_MEM   = 1'b1;
       Entrada_01 = 8'd112;  
       Entrada_02 = 8'd160;
       
		 #65 Srst  = 1'b0; 
		 RESET_MEM = 1'b0;
       
		
    end
	 integer f;
	 integer i,j;
	 
	initial begin
	//Open output file
		f = $fopen("output.txt","w");
		
	for (i=0;i<257;i=i+16) begin
		for (j=0;j<257;j=j+16) begin
			Entrada_01 = i;  
			Entrada_02 = j;
			if(i<1) Entrada_01=1;
			if(i>254) Entrada_01=254;
			if(j<1) Entrada_02=1;
			if(j>254) Entrada_02=254;
			
		#1000 $fwrite(f,"%b\n",saida_defuzzy);//Save Output data File
		
		end
	
	end
	
		$fclose(f);
		$finish;
		
	end
	
    always
	  begin
	    #15 clk_0 = 1'b1;
       #20 clk_0 = 1'b0; 
	  end
	  
//	initial begin
//		#2500 $stop;
//	end

					  
	 Fuzzy_1 DUT (Srst, Entrada_01, Entrada_02, EN_REGRAS, saida_defuzzy, clk_0, Sclk_int,
						SSequencia_regras, SReset_Memoria, FOU_ATIVO,
						sFOU_01_UP, sFOU_02_UP, sFOU_03_UP, sFOU_01_LOW,
						sFOU_02_LOW, sFOU_03_LOW, sFOU_04_UP, sFOU_05_UP, sFOU_06_UP,
						sFOU_04_LOW, sFOU_05_LOW, sFOU_06_LOW,
						Ssaida_UP_0, Ssaida_LOW_0, Ssaida_UP_1, Ssaida_LOW_1, Ssaida_UP_2, Ssaida_LOW_2); 
	 //module Fuzzy_1 (Srst, Entrada_01, Entrada_02, EN_REGRAS, saida_defuzzy, clk_0, clk_1); 


endmodule
