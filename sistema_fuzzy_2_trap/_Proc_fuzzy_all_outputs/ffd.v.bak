module ffd (q, D, EN, clk, rst);
    output reg [7:0] q;
    input [7:0] D;
	 input EN, clk, rst;
   

    always @(posedge(clk), posedge(rst)) 
      if (rst==1'b1) begin
		q <= 1'b0;
		end 
		else if (EN==1'b1) begin
				q <= D;
     end
endmodule
