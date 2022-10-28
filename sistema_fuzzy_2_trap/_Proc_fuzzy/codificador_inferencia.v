module codificador_inferencia (codigo, entrada, rst);// EN);

	    input      [3:0]   entrada;
		 input rst;// EN;
        output reg [2:0]   codigo;
       
        always @(entrada)
		  if (rst) codigo = 3'b000;
		  else //if (EN)
          begin
              if(entrada == 4'b0000) codigo = 3'b001; else
              if(entrada == 4'b0001) codigo = 3'b001; else        
              if(entrada == 4'b0100) codigo = 3'b001; else
              if(entrada == 4'b1000) codigo = 3'b010; else   
	           if(entrada == 4'b0101) codigo = 3'b010; else
              if(entrada == 4'b0010) codigo = 3'b010; else  
              if(entrada == 4'b1001) codigo = 3'b100; else 
              if(entrada == 4'b0110) codigo = 3'b100; else 				  
              if(entrada == 4'b1010) codigo = 3'b100;  
              else codigo = 3'bx;
          end 
                
endmodule


