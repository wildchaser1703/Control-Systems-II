% Obtaining the transfer function and its step response of a state model and also find the Eigen values given  by:
% [(x1@x2)]=[(0&1@-1&-1)] [(x1@x2)] + [(0@1)] u
% 
% Y = [1	0] [(x1@x2)]
a = [0	1; -1	-1 ]
b = [0 ; 1 ]
c = [1	0 ]
d = 0
[num, den ] = ss2tf (a,b,c,d)
g = tf( num, den)
eig (a)
if (eig(a) < 0 )
    system =1
else
    system=0
end
