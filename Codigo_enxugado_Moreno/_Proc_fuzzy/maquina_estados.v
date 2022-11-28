module maquina_estados (clk, entrada, rst, EN_REGRAS, saida, estado);
   input      clk, rst, EN_REGRAS;
	input      [5:0] entrada;
   output reg [5:0] saida;
	output     [3:0] estado;
	    

   reg  [3:0] estado_atual;

//=============Declaracao dos estados===============
	localparam END = 4'd0, Start = 4'd1, R0 = 4'd2, R1 = 4'd3, R2 = 4'd4, R3 = 4'd5, R4= 4'd6, R5 = 4'd7, 
              R6 = 4'd8, R7 = 4'd9, R8= 4'd10;

//--------------Inserido para teste:
   assign estado = estado_atual;

//========== Definicao do valor da saida============

	always @ (estado_atual) begin
		case (estado_atual)
   		Start:  saida = 6'b010000;
		   R0:     saida = 6'b000000;
		   R1:     saida = 6'b000001;
		   R2:     saida = 6'b000010;
		   R3:     saida = 6'b000100;
   		R4:     saida = 6'b000101;
   		R5:     saida = 6'b000110;
			R6:     saida = 6'b001000;
		   R7:     saida = 6'b001001;
			R8:     saida = 6'b001010;
		   END:    saida = 6'b100000;
		endcase
	end

	always @ (posedge clk or posedge rst)
	begin
		if (rst)
			estado_atual <= END;
		else if (EN_REGRAS==1'b1)
			case (estado_atual)    
				END  :  estado_atual <= Start;
				Start:
//================R8=====================
			         if (entrada == 6'b001_001) // 1 REGRA
						estado_atual <= R8;
													
//================R7=====================
				      else if (entrada == 6'b001_011) // 2 REGRAS
						estado_atual <= R7;
						else if (entrada == 6'b001_010)//1 REGRA
						estado_atual <= R7;

//================R6=====================
				      else if (entrada == 6'b001_110) // 2 REGRAS
						estado_atual <= R6;					
						else if (entrada == 6'b001_100)//1 REGRA
						estado_atual <= R6;

//================R5=====================
	
				      else if (entrada == 6'b011_001) // 2 REGRAS
						estado_atual <= R5;
						else if (entrada == 6'b010_001)//1 REGRA
						estado_atual <= R5;	
					
//================R4=====================
				      else if (entrada == 6'b010_011) //2 REGRAS
						estado_atual <= R4;
				      else if (entrada == 6'b011_010) // 2 REGRAS
						estado_atual <= R4;
				      else if (entrada == 6'b011_011)//4 REGRAS
						estado_atual <= R4;
						else if (entrada == 6'b010_010)//1 REGRA
						estado_atual <= R4;	
				
//================R3=====================
				      else if (entrada == 6'b010_110) //  2 REGRAS
						estado_atual <= R3;
				      else if (entrada == 6'b011_100) // 2 REGRAS
						estado_atual <= R3;	
				      else if (entrada == 6'b011_110)//4 REGRAS
						estado_atual <= R3;
						else if (entrada == 6'b010_100)//1REGRA
						estado_atual <= R3;	
						
//================R2=====================
				      else if (entrada == 6'b110_001)//2 Regras
						estado_atual <= R2;
						else if (entrada == 6'b100_001)//1 Regra
						estado_atual <= R2;

//================R1=====================
				      else if (entrada == 6'b100_011)//2 regras
						estado_atual <= R1;
				      else if (entrada == 6'b110_010)// 2 regras
						estado_atual <= R1;
				      else if (entrada == 6'b110_011)//4 Regras
						estado_atual <= R1;
						else if (entrada == 6'b100_010)//1 Regra
						estado_atual <= R1;
					
//================R0=====================
				      else if(entrada ==  6'b100_110) // 2 regra
				      estado_atual <= R0;
						else if(entrada ==  6'b110_100)// 2 regras
				      estado_atual <= R0;			
					   else if(entrada ==  6'b110_110)//4Regras
				      estado_atual <= R0;
						else if (entrada == 6'b100_100)//1Regra
						estado_atual <= R0;
						else estado_atual <= Start;

R0:
				    if(entrada ==  6'b100_110) //ok
				      estado_atual <= R1;
				    else if(entrada ==  6'b110_100)//ok
				      estado_atual <= R3;
				    else if(entrada ==  6'b110_110)//ok
				      estado_atual <= R1;
				    else estado_atual <= END;			
		
R1:			
					 if(entrada ==  6'b100_011) //ok
					      estado_atual <= R2;
					 else if(entrada ==  6'b110_010)//ok
					         estado_atual <= R4;
					 else if(entrada ==  6'b110_011)//ok
					      estado_atual <= R2;
					 else if(entrada ==  6'b110_110)//Seq de 4R
					       estado_atual <= R4;
					 else estado_atual <= END;						
						
R2:			
                if (entrada == 6'b110_001)//ok
						estado_atual <= R5;
					 else if(entrada ==  6'b110_011)//Seq de 4R
					   estado_atual <= R5;
					 else estado_atual <= END;			
						
R3:			
					 if (entrada == 6'b010_110)
						estado_atual <= R4;	
				    else if (entrada == 6'b011_100)
						estado_atual <= R6;	
					 else if(entrada ==  6'b011_110)//4R
					   estado_atual <= R4;
					 else estado_atual <= END;						
													
						
R4:			
					 if (entrada == 6'b010_011) //ok
						estado_atual <= R5;
				    else if (entrada == 6'b011_010) //ok
						estado_atual <= R7;
				    else if(entrada ==  6'b011_011)//ok
					   estado_atual <= R5;
					 else if(entrada ==  6'b011_110)//4R
					   estado_atual <= R7;
					 else if(entrada ==  6'b110_110)//4R
					   estado_atual <= R3;
					 else estado_atual <= END;
	
R5:			
				    if (entrada == 6'b011_001) //ok
						estado_atual <= R8;
					 else if(entrada ==  6'b011_011)//4R ok
					   estado_atual <= R8;
					 else if(entrada ==  6'b110_011)//Seq de 4R
					   estado_atual <= R4;
					 else estado_atual <= END;
		
						
R6:			
					 if (entrada == 6'b001_110) // ok
						estado_atual <= R7;
					 else estado_atual <= END;

						
R7:			
					 if (entrada == 6'b001_011)//ok
						estado_atual <= R8;
					 else if(entrada ==  6'b011_110)//ok
					   estado_atual <= R6;
					 else estado_atual <= END;
								 
								
R8:			
                if(entrada ==  6'b011_011)//ok
					    estado_atual <= R7;		
			       else estado_atual <= END;
				
		endcase
		
end
endmodule
