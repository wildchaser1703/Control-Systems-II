%Obtaining pole zero map of a discrete transfer function 
num = [1]
den= [1 1 0]
Ts=0.1
sys = tf (num,den)
sysd = c2d(sys,Ts, 'zoh')
pzmap(sysd)
