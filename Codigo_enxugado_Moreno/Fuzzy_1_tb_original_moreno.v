`timescale 1ns / 1ps

module Fuzzy_1_tb;

    reg  RESET_MEM, EN_REGRAS, Srst;
    reg  clk_0, clk_1;
    reg  [7:0] Entrada_01, Entrada_02;
	 
    //wire       SReset_Memoria, Sclk_int; 
    wire [5:0] FOU_ATIVO;
    wire [7:0] saida_defuzzy;
   // wire [3:0] SSequencia_regras;
   // wire [7:0] Ssaida_UP_0, Ssaida_UP_1,  Ssaida_UP_2;
   // wire [7:0] Ssaida_LOW_0, Ssaida_LOW_1, Ssaida_LOW_2;
	 //wire [7:0] sFOU_01_UP, sFOU_02_UP, sFOU_03_UP, sFOU_01_LOW,
	//				sFOU_02_LOW, sFOU_03_LOW, sFOU_04_UP, sFOU_05_UP, sFOU_06_UP,
	//				sFOU_04_LOW, sFOU_05_LOW, sFOU_06_LOW, SFOU_1, SFOU_2, SFOU_3;
   // wire [15:0] Ssaida_x_pos, Ssaida_total; 

    initial begin
       clk_0 = 1'b0;
       clk_1 = 1'b0;
	    EN_REGRAS   = 1'b1;
	    Srst        = 1'b1;
	    RESET_MEM   = 1'b1;
//       Entrada_01 = 8'd01;  
//       Entrada_02 = 8'd01;
       
		 #65 Srst  = 1'b0; RESET_MEM = 1'b0;
       
		#5000 $stop;
    end
	
    always
	  begin
	    #15 clk_0 = 1'b1; #20 clk_1 = 1'b1;
       #20 clk_0 = 1'b0; #15 clk_1 = 1'b0;
	  end

 /*   always
		begin
	    #200 Entrada_01 = 224; Entrada_02 = 176;
	    #400 Entrada_01 = 240; Entrada_02 = 176;

   end
*/
	
	
//    always
//	  begin
//       #200 Entrada_01 = Entrada_01 + 1; Entrada_02 = Entrada_02 + 1;
//	  end	  
	  
    Fuzzy_1 DUT (Srst, Entrada_01, Entrada_02, EN_REGRAS, FOU_ATIVO, saida_defuzzy, clk_0,
	              clk_1
					  //, SReset_Memoria, Sclk_int, SSequencia_regras, Ssaida_UP_0, 
					  //Ssaida_UP_1,  Ssaida_UP_2, Ssaida_LOW_0, Ssaida_LOW_1, Ssaida_LOW_2,
					  //sFOU_01_UP, sFOU_02_UP, sFOU_03_UP, sFOU_01_LOW,
					  //sFOU_02_LOW, sFOU_03_LOW, sFOU_04_UP, sFOU_05_UP, sFOU_06_UP,
					  //sFOU_04_LOW, sFOU_05_LOW, sFOU_06_LOW, Ssaida_x_pos, Ssaida_total, SFOU_1, SFOU_2,SFOU_3
					  ); 
	

endmodule
