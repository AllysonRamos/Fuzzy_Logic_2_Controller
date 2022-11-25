module mux_4CANAIS_4b  (a, b, c, s, sel);

  input [7:0] a, b, c;
  input  [1:0] sel;
  
  output reg[7:0] s;
  
  always @ (a,b,c,sel)
    case (sel)
      0: s <= a; 
      1: s <= b;
      2: s <= c;
      default s <= c;
   endcase
	
endmodule 