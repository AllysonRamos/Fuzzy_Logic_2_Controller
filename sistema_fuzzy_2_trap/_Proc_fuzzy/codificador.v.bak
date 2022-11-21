module codificador (codigo, entrada);

	    input      [3:0]   entrada;
        output reg [1:0]   codigo;
       
        always @(entrada)
          begin
              if(entrada == 4'b0000) codigo = 0; else
              if(entrada == 4'b0001) codigo = 0; else        
              if(entrada == 4'b0100) codigo = 0; else
              if(entrada == 4'b1000) codigo = 1; else   
	           if(entrada == 4'b0101) codigo = 1; else
              if(entrada == 4'b0010) codigo = 1; else        
              if(entrada == 4'b1001) codigo = 2; else
              if(entrada == 4'b0110) codigo = 2; else 
		        if(entrada == 4'b1010) codigo = 2;  	  
              else codigo = 2'bx;
          end 
                
endmodule
