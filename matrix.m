% General Case

syms D1_ D2_ D3_ a11 a12 a13 a21 a22 a23 a31 real
% D1_ = D1 / omega; D2_ = D2 / omega; D3_ = D3 / omega;
syms deltaA A gamma1 gamma2 gamma3 real

b11 = 1; b12 = 0; b13 = 0; b14 = (1-1i)*sqrt(2*D1_)/2; b15 = 0; b16 = 0;
b21 = 0; b22 = 1; b23 = 0; b24 = 0; b25 = (1-1i)*sqrt(2*D2_)/2; b26 = 0;
b31 = 0; b32 = 0; b33 = 1; b34 = 0; b35 = 0; b36 = (1-1i)*sqrt(2*D3_)/2;
b41 = 1; b42 = 0; b43 = 0; b44 = -a11; b45 = -a12; b46 = -a13;
b51 = 0; b52 = 1; b53 = 0; b54 = -a21; b55 = -a22; b56 = -a23;
b61 = 0; b62 = 0; b63 = 1; b64 = -a31; b65 = -a32; b66 = -a33;

B = [[b11,b12,b13,b14,b15,b16]; [b21,b22,b23,b24,b25,b26]; [b31,b32,b33,b34,b35,b36]; [b41,b42,b43,b44,b45,b46]; [b51,b52,b53,b54,b55,b56]; [b61,b62,b63,b64,b65,b66]];

d11 = -gamma1 * deltaA / A;
d21 = -gamma2 * deltaA / A;
d31 = -gamma3 * deltaA / A;
d41 = 0;
d51 = 0;
d61 = 0;

D = [d11; d21; d31; d41; d51; d61]

F =  B \ D;

deltaG1 = F(1)
%x = simplify(deltaG1)
deltaG2 = F(2)
%y = simplify(deltaG2)
deltaG3 = F(3)
%z = simplify(deltaG3)
