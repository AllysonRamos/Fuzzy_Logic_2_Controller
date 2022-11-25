module mux4b_U_reg  (a, b, c, s, sel);

  input [7:0] a, b, c;
  input [1:0] sel;
  
  output reg[7:0] s;
  
  always @ (a, b, c,sel)
    case (sel)
      1: s <= b; 
      2: s <= c; 
      //3: s <= d; 
      default s <= a;
   endcase
endmodule
