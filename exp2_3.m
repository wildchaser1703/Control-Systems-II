% Write a matlab code to convert rational form of the following z function in factored form
%           2z4+16z3+44z2+56z+32
% G(z)= --------------------------------
%           3z4+3z3-15z2+18z-12
syms z n
num = [2 16 44 56 32]
den = [3 3 -15 18 -12]
[z,p,k] = tf2zp(num,den)
gzfct = zp2sos(z,p,k)
