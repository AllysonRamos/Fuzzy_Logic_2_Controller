module ffd (q, D, EN, clk, rst);
    output reg [7:0] q;
    input [7:0] D;
	 input EN, clk, rst;
   

    always @(negedge(clk), posedge(rst)) begin
      if (rst==1'b1)			q <= 1'b0;
		else if (EN==1'b1) 	q <= D;
	 end
endmodule
