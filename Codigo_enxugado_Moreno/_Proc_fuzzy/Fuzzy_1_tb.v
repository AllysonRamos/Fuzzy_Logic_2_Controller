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
       
		//#5000 $stop;
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

integer f;
integer i,j;

//	VERSAO DE 16 EM 16
//initial begin
//
//		f = $fopen("output.txt","w");		//Open output file
//		
//		for (i=0;i<257;i=i+16) begin
//			for (j=0;j<257;j=j+16) begin
//		
//				Entrada_01 = i;  
//				Entrada_02 = j;
//			
//				if(i<1) Entrada_01=1;
//				if(i>254) Entrada_01=254;
//				if(j<1) Entrada_02=1;
//				if(j>254) Entrada_02=254;
//			
//				#1000 $fwrite(f,"%b\n",saida_defuzzy);		//Save Output data File
//			end
//		end
//	
//		$fclose(f);
//		$finish;	
//	end

//VERSAO DE 1 EM 1
	initial begin

		f = $fopen("output.txt","w");		//Open output file
		
		for (i=0;i<255;i=i+1) begin
			for (j=0;j<255;j=j+1) begin
		
				Entrada_01 = i;  
				Entrada_02 = j;
			
				if(i<1) Entrada_01=1;
				if(i>254) Entrada_01=254;
				if(j<1) Entrada_02=1;
				if(j>254) Entrada_02=254;
			
				#2000 $fwrite(f,"%b\n",saida_defuzzy);		//Save Output data File
			end
		end
	
		$fclose(f);
		$finish;	
	end
	
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
