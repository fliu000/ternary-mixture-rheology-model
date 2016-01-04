% Case 2:

syms D1_ D2_ a11 a12 a21 a22 real
% D1_ = D1 / omega; D2_ = D2 / omega;
syms deltaA A gamma1 gamma2 gamma3 real

b11 = 1; b12 = 0; b13 = 0; b14 = (1-1i)*sqrt(2*D1_)/2; b15 = 0; 
b21 = 0; b22 = 1; b23 = 0; b24 = 0; b25 = (1-1i)*sqrt(2*D2_)/2; 
b31 = 0; b32 = 0; b33 = 1; b34 = 0; b35 = 0; 
b41 = 1; b42 = 0; b43 = 0; b44 = -a11; b45 = -a12; 
b51 = 0; b52 = 1; b53 = 0; b54 = -a21; b55 = -a22; 

B = [[b11,b12,b13,b14,b15]; [b21,b22,b23,b24,b25]; [b31,b32,b33,b34,b35]; [b41,b42,b43,b44,b45]; [b51,b52,b53,b54,b55]]

d11 = -gamma1 * deltaA / A;
d21 = -gamma2 * deltaA / A;
d31 = -gamma3 * deltaA / A;
d41 = 0;
d51 = 0;


D = [d11; d21; d31; d41; d51]

F = B \ D;

deltaG1 = F(1)
%x = simplify(deltaG1)
deltaG2 = F(2)
%y = simplify(deltaG2)
deltaG3 = F(3)
%z = simplify(deltaG3)
