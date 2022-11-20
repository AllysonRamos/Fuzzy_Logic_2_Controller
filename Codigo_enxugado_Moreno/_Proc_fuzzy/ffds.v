module ffds (q, D, EN, clk, inicio);
    output reg [7:0] q;
    input [7:0] D;
	 input EN, clk, inicio;
   

    always @(posedge(clk), posedge(inicio))
	 
      if (inicio == 1'b1) q <= 1'b1;
		else
		     if (EN == 1'b1)  q <= D;
    
endmodule
