% Obtain the eigen values of a transfer function given by
% G(s) = 1 / (s2+10s+20)
num = [1]
den = [1	10	20]
[A, B, C, D ] = tf2ss (num, den)
g = eig (A)
if (g < 0)
    system = 1
else 	system = 0
end
