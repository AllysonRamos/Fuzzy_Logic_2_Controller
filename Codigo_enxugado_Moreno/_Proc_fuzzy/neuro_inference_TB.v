`timescale 1ns/1ps 
module neuro_inference_TB();

parameter N_INPUTS = 16384;
reg rst, clk;
reg D_IN_SERIAL;
wire OUT_SERIAL;

reg [1:250] test_weight [1:1];
reg [1:14] test_inputs [1:N_INPUTS];

//Device Under Test
neuro_inference DUT(rst,clk,D_IN_SERIAL,OUT_SERIAL);

//Timing Signals

always begin #10 	clk = ~clk; end
initial begin clk = 0; rst = 1; #20 rst = 0; end

//Input-Output Signals

integer i,j,k;
integer f;

initial begin	
	// Read Weights File
	$readmemb("WEIGHTS.txt", test_weight);
	
	D_IN_SERIAL = 0;	// Initialize
	
	for (i=1;i<251;i=i+1) begin
	#20 D_IN_SERIAL = test_weight[1][i];	// Apply weight data
	end
	
	//Read Input File
	$readmemb("INPUTS.txt", test_inputs);
	
	//Open output file
	f = $fopen("output.txt","w");
	
	for (i=1;i<(N_INPUTS+1);i=i+1) begin
		for (j=1;j<15;j=j+1) begin
			#20 D_IN_SERIAL = test_inputs[i][j];	// Apply input data
		end	
		#20 D_IN_SERIAL = 0;
		
		for (k=1;k<14;k=k+1) begin
			#20 $fwrite(f,"%b",OUT_SERIAL);//Save Output data File
		end
		$fwrite(f,"\n");
	end
	
	//Close output file
	$fclose(f);
	
	//Stop simulation
	$finish;
end

endmodule
