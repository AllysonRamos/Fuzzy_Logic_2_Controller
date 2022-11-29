module ffd_defuzzy (q, D, clk ,rst);
    output reg [7:0] q;
    input [7:0] D;
	 input clk, rst; //EN;
   
   always @(posedge(clk), posedge(rst)) begin
      if 		(rst==1'b1) 	q <= 1'b0; 
		//else if	(EN==1'b1) 		q <= D;
		else							q <= D;		//HABILITE PARA FACILITAR O DEBUG NA SIMULAÇÃO
	end

endmodule
