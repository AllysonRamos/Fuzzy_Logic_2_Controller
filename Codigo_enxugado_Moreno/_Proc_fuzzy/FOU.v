module FOU (Input_01,Input_02, EN_Entrada_FOU, CLK, RESET, FOU_01_UP, FOU_02_UP, FOU_03_UP, 
FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,
FOU_04_UP, FOU_05_UP, FOU_06_UP,FOU_04_LOW, FOU_05_LOW, FOU_06_LOW,
Ativo_UP);



input [7:0] Input_01,Input_02;
input EN_Entrada_FOU, CLK, RESET;

output [5:0] Ativo_UP;


output [7:0] FOU_01_UP, FOU_02_UP, FOU_03_UP, FOU_01_LOW, FOU_02_LOW, FOU_03_LOW,
FOU_04_UP, FOU_05_UP, FOU_06_UP, FOU_04_LOW, FOU_05_LOW, FOU_06_LOW;

//---------------------Paramêtros para a entrada x1 -----------------------------
//SUPERIOR 

/*parameter A1 = 8'd0; // Parametro da Função de Pertinência Superior
parameter A2 = 8'd0;
parameter A3 = 8'd5;
parameter A4 = 8'd18;
parameter A5 = 8'd100; // Alterado
parameter A6 = 8'd125;

parameter B1 = 8'd1;
parameter B2 = 8'd1;
parameter B3 = 8'd77;
parameter B4 = 8'd77;
parameter B5 = 8'd179;
parameter B6 = 8'd179;

parameter C1 = 8'd51;
parameter C2 = 8'd51;
parameter C3 = 8'd153;
parameter C4 = 8'd153;
parameter C5 = 8'd254;
parameter C6 = 8'd254;

parameter D1 = 8'd114; // Alterado
parameter D2 = 8'd100;
parameter D3 = 8'd222;
parameter D4 = 8'd209;
parameter D5 = 8'd255;
parameter D6 = 8'd255;

//---------------------Paramêtros para a entrada x2 -----------------------------
//INFERIOR

parameter E1 = 8'd0;
parameter E2 = 8'd0;
parameter E3 = 8'd31;
parameter E4 = 8'd46;
parameter E5 = 8'd153;
parameter E6 = 8'd168;

parameter F1 = 8'd1;
parameter F2 = 8'd1;
parameter F3 = 8'd102;
parameter F4 = 8'd102;
parameter F5 = 8'd230;
parameter F6 = 8'd230;

parameter G1 = 8'd77;
parameter G2 = 8'd77;
parameter G3 = 8'd179;
parameter G4 = 8'd179;
parameter G5 = 8'd254;
parameter G6 = 8'd254;

parameter H1 = 8'd148;
parameter H2 = 8'd133;
parameter H3 = 8'd250;
parameter H4 = 8'd235;
parameter H5 = 8'd255;
parameter H6 = 8'd255; */

// Formam a FOU 1
// A1,B1,C1 e B1 superior
//A2,B2,C2 e B2 inferior

parameter A1 = 8'd0; // Parametro da Função de Pertinência Superior 1
parameter A2 = 8'd0; //Parametro da Função de Pertinência Infeior 1
//---------------------------------------------------------------------

parameter A3 = 8'd5; // Parametro da Função de Pertinência Superior 2
parameter A4 = 8'd18;//Parametro da Função de Pertinência Infeior 2
//----------------------------------------------------------------------

parameter A5 = 8'd118; // Parametro da Função de Pertinência Superior 3 // Alterado
parameter A6 = 8'd125; //Parametro da Função de Pertinência Infeior 3 // Alterado
//----------------------------------------------------------------------

parameter B1 = 8'd1;//Parametro da Função de Pertinência Superior 1
parameter B2 = 8'd1; // Parametro da Função de Pertinência Inferior 1

//-----------------------------------------------------------------------
parameter B3 = 8'd77; // Parametro da Função de Pertinência Superior 3
parameter B4 = 8'd77; //  Parametro da Função de Pertinência Inferior 3

//----------------------------------------------------------------------
parameter B5 = 8'd179;//Parametro da Função de Pertinência Superior 3
parameter B6 = 8'd179; //  Parametro da Função de Pertinência Inferior 3

//--------------------------------------------------------------------
parameter C1 = 8'd51; //Parametro da Função de Pertinência Superior 1
parameter C2 = 8'd51;// Parametro da Função de Pertinência Inferior 1

//-------------------------------------------------------------------------
parameter C3 = 8'd153; // Parametro da Função de Pertinência Superior 2
parameter C4 = 8'd153; // Parametro da Função de Pertinência Inferior 2

//------------------------------------------------------------------------
parameter C5 = 8'd254;  // Parametro da Função de Pertinência Inferior 3
parameter C6 = 8'd254; // Parametro da Função de Pertinência Superior 3

//-------------------------------------------------------------------------
parameter D1 = 8'd114; //Parametro da Função de Pertinência Superior1 // Alterado
parameter D2 = 8'd107; // Parametro da Função de Pertinência Inferior 1 // Alterado

//------------------------------------------------------------------------
parameter D3 = 8'd222; //Parametro da Função de Pertinência Superior2
parameter D4 = 8'd209; //Parametro da Função de Pertinêna Inferior 2

//-----------------------------------------------------------------------------
parameter D5 = 8'd255;  //Parametro da Função de Pertinência Superior 3
parameter D6 = 8'd255; //Parametro da Função de Pertinência Inferior 3

//---------------------Paramêtros para a entrada x2 -----------------------------

parameter E1 = 8'd0;
parameter E2 = 8'd0;
parameter E3 = 8'd31;
parameter E4 = 8'd46;
parameter E5 = 8'd153;
parameter E6 = 8'd168;

parameter F1 = 8'd1;
parameter F2 = 8'd1;
parameter F3 = 8'd102;
parameter F4 = 8'd102;
parameter F5 = 8'd230;
parameter F6 = 8'd230;

parameter G1 = 8'd77;
parameter G2 = 8'd77;
parameter G3 = 8'd179;
parameter G4 = 8'd179;
parameter G5 = 8'd254;
parameter G6 = 8'd254;

parameter H1 = 8'd148;
parameter H2 = 8'd133;
parameter H3 = 8'd250;
parameter H4 = 8'd235;
parameter H5 = 8'd255;
parameter H6 = 8'd255; 

parameter TOPO = 8'd100; 

wire [7:0] entrada_01,entrada_02;
wire Ativo_UP_1, Ativo_UP_2, Ativo_UP_3, Ativo_UP_4, Ativo_UP_5, Ativo_UP_6;


ffds ENTRADA01(entrada_01, Input_01, EN_Entrada_FOU, CLK, RESET);
ffds ENTRADA02(entrada_02, Input_02, EN_Entrada_FOU, CLK, RESET);

assign Ativo_UP = {Ativo_UP_1, Ativo_UP_2, Ativo_UP_3,
                   Ativo_UP_4, Ativo_UP_5, Ativo_UP_6};  


//---------------Circuito FOU TRAPEZOIDAL 01------------------------------------



Trapezio UP_UM_01 (entrada_01,A1,B1,C1,D1,TOPO, FOU_01_UP);

Trapezio LOW_UM_01 (entrada_01,A2,B2,C2,D2,TOPO, FOU_01_LOW);

Trapezio UP_DOIS_01 (entrada_01,A3,B3,C3,D3,TOPO, FOU_02_UP);

Trapezio LOW_DOIS_01 (entrada_01,A4,B4,C4,D4,TOPO, FOU_02_LOW);

Trapezio UP_TRES_01 (entrada_01,A5,B5,C5,D5,TOPO, FOU_03_UP);

Trapezio LOW_TRES_01 (entrada_01,A6,B6,C6,D6,TOPO, FOU_03_LOW);




//---------------Circuito FOU TRAPEZOIDAL 02------------------------------------


Trapezio UP_UM_02 (entrada_02,E1,F1,G1,H1,TOPO, FOU_04_UP);

Trapezio LOW_UM_02 (entrada_02,E2,F2,G2,H2,TOPO, FOU_04_LOW);

Trapezio UP_DOIS_02 (entrada_02,E3,F3,G3,H3,TOPO, FOU_05_UP);

Trapezio LOW_DOIS_02 (entrada_02,E4,F4,G4,H4,TOPO, FOU_05_LOW);

Trapezio UP_TRES_02 (entrada_02,E5,F5,G5,H5,TOPO, FOU_06_UP);

Trapezio LOW_TRES_02 (entrada_02,E6,F6,G6,H6,TOPO, FOU_06_LOW);


//---------------------------Ativo entrada x1------------------------------------------

geraSativo detecta_1(FOU_01_UP, Ativo_UP_1); 
geraSativo detecta_2(FOU_02_UP, Ativo_UP_2); 
geraSativo detecta_3(FOU_03_UP, Ativo_UP_3); 
 
//---------------------------Ativo entrada x2------------------------------------------

geraSativo detecta_4(FOU_04_UP, Ativo_UP_4); 
geraSativo detecta_5(FOU_05_UP, Ativo_UP_5);  
geraSativo detecta_6(FOU_06_UP, Ativo_UP_6); 

endmodule



