syms D1 D2 D3 w a11 a12 a13 a21 a22 a23 a31 real
syms deltaA A gamma1 gamma2 gamma3 real

b11 = 1; b12 = 0; b14 = (1-1*i)*sqrt(D1/2/w); b15 = 0; 
b21 = 0; b22 = 1; b24 = 0; b25 = (1-1*i)*sqrt(D2/2/w); 

b41 = 1; b42 = 0; b44 = -a11; b45 = -a12; 
b51 = 0; b52 = 1; b54 = -a21; b55 = -a22; 

B = [[b11,b12,b14,b15]; [b21,b22,b24,b25]; [b41,b42,b44,b45]; [b51,b52,b54,b55]]

d11 = -gamma1 * deltaA / A;
d21 = -gamma2 * deltaA / A;
d41 = 0;
d51 = 0;


D = [d11; d21; d41; d51]

F =  B\D;
%simplify(F)

deltaG1 = F(1);
x = simplify(deltaG1)
deltaG2 = F(2);
y = simplify(deltaG2)
