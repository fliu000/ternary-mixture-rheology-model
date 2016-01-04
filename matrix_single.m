% Single Component

syms D1_ a11 real
syms deltaA A gamma1 real

% omega is angular frequency of oscillation; 
% D1 = 3 * 10 ^ (-10); f = 0.5;
% omega = 2 * pi * f; D1_ = D1 / omega;
% a11 = d(gamma1)/d(Cs1);

b11 = 1; b12 = (1-1i)*sqrt(2*D1_)/2;
b21 = 1; b22 = -a11;

B = [[b11,b12]; [b21,b22]]

d11 = -gamma1 * deltaA / A;
d21 = 0;

D = [d11; d21]

F =  B \ D;

deltaG1 = F(1)
%x = simplify(deltaG1)
deltaCs1 = F(2)
%y = simplify(deltaCs1)
