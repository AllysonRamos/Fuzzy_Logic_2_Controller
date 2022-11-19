function output = fuzzy2teorico(in1,in2)
%INFERENCIA 
%Funcao que calcula o resultado da inferencia fuzzy tipo 2 para um sistema
%com duas entradas, 9 regras e uma saida. Tipo-reducao utilizando o metodo
%de Nie-Tan.

%Fuzificacao
mfN1U = trapmf(in1, [0 1 51 114]);
mfN1L = trapmf(in1, [0 1 51 107]);
mfZ1U = trapmf(in1, [5 77 153 222]);
mfZ1L = trapmf(in1, [18 77 153 209]);
mfP1U = trapmf(in1, [118 179 254 255]);
mfP1L = trapmf(in1, [125 179 254 255]);

mfN2U = trapmf(in2, [0 1 77 148]);
mfN2L = trapmf(in2, [0 1 77 133]);
mfZ2U = trapmf(in2, [31 102 179 250]);
mfZ2L = trapmf(in2, [46 102 179 235]);
mfP2U = trapmf(in2, [153 230 254 255]);
mfP2L = trapmf(in2, [168 230 254 255]);

%regras
antecedents1U = [mfN1U mfN1U mfN1U; mfZ1U mfZ1U mfZ1U; mfP1U mfP1U mfP1U];
antecedents2U = [mfN2U mfZ2U mfP2U; mfN2U mfZ2U mfP2U; mfN2U mfZ2U mfP2U];

antecedents1L = [mfN1L mfN1L mfN1L; mfZ1L mfZ1L mfZ1L; mfP1L mfP1L mfP1L];
antecedents2L = [mfN2L mfZ2L mfP2L; mfN2L mfZ2L mfP2L; mfN2L mfZ2L mfP2L];

%Implicacao
firingUP = min(antecedents1U,antecedents2U);
firingLOW = min(antecedents1L,antecedents2L);

%Agregacao
N_UP = max([firingUP(1,1) firingUP(1,2) firingUP(2,1)]);
Z_UP = max([firingUP(3,1) firingUP(2,2) firingUP(1,3)]);
P_UP = max([firingUP(3,2) firingUP(2,3) firingUP(3,3)]);

N_LOW = max([firingLOW(1,1) firingLOW(1,2) firingLOW(2,1)]);
Z_LOW = max([firingLOW(3,1) firingLOW(2,2) firingLOW(1,3)]);
P_LOW = max([firingLOW(3,2) firingLOW(2,3) firingLOW(3,3)]);

%NIE-TAN
y1=1;
y2=127;
y3=254;

output = (y1*(N_UP+N_LOW)+y2*(Z_UP+Z_LOW)+y3*(P_UP+P_LOW))/(N_UP+N_LOW+Z_UP+Z_LOW+P_UP+P_LOW);

end

