module ffds (q, D, clk, reset);
    output reg [7:0] q;
    input [7:0] D;
	 //input EN;
	 input clk, reset;
   

    always @(posedge(clk), posedge(reset))
	 
      if (reset == 1'b1) 
			q <= 1'b1;
		else //if (EN == 1'b1) 
			q <= D;

endmodule
