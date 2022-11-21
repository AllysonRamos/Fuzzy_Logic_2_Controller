x1 = [1, 1:1:300 , 301];
x2 = [1, 1:1:300 , 301];

mfN1U = 255*trapmf(x1, [0 1 51 114]);
subplot(2,1,1),plot(mfN1U, 'r');
hold on

mfN1L = 255*trapmf(x1, [0 1 51 107]);
subplot(2,1,1),plot(mfN1L, 'r');
hold on

mfZ1U = 255*trapmf(x1, [5 77 153 222]);
subplot(2,1,1),plot(mfZ1U, 'g');
hold on

mfZ1L = 255*trapmf(x1, [18 77 153 209]);
subplot(2,1,1),plot(mfZ1L, 'g');
hold on

mfP1U = 255*trapmf(x1, [118 179 254 255]);
subplot(2,1,1),plot(mfP1U, 'b');
hold on
title("Membership Functions for Input 1")
grid on

mfP1L = 255*trapmf(x2, [125 179 254 255]);
subplot(2,1,1),plot(mfP1L, 'b');
hold on

mfN2U = 255*trapmf(x2, [0 1 77 148]);
subplot(2,1,2),plot(mfN2U, 'r');
hold on

mfN2L = 255*trapmf(x2, [0 1 77 133]);
subplot(2,1,2),plot(mfN2L, 'r');
hold on

mfZ2U = 255*trapmf(x2, [31 102 179 250]);
subplot(2,1,2),plot(mfZ2U, 'g');
hold on

mfZ2L = 255*trapmf(x2, [46 102 179 235]);
subplot(2,1,2),plot(mfZ2L, 'g');
hold on

mfP2U = 255*trapmf(x2, [153 230 254 255]);
subplot(2,1,2),plot(mfP2U, 'b');
hold on

mfP2L = 255*trapmf(x2, [168 230 254 255]);
subplot(2,1,2),plot(mfP2L, 'b');
hold on
title("Membership Functions for Input 2")
grid on