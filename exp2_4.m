%Write a matlab code to convert rational form of the following z function in partial fraction form
%           18z3
% G(z)=	------------------
%         18z3+3z2-4z-1
syms z n
num = [18 0 0 0]
den = [18 3 -4 -1]
[r,p,k] = residuez(num,den)
