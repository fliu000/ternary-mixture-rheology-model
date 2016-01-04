% Single Component

syms D1_ a11 real
% D1_ = D1 / omega;
syms deltaA A gamma1 real

b11 = 1; b12 = (1-1i)*sqrt(2*D1_)/2;
b21 = 1; b22 = -a11;

B = [[b11,b12]; [b21,b22]]

d11 = -gamma1 * deltaA / A;
d21 = 0;

D = [d11; d21]

F =  B \ D;

deltaG1 = F(1)
%x = simplify(deltaG1)
deltaG2 = F(2)
%y = simplify(deltaG2)
