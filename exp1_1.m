% To convert a transfer function (sys) from continuous to discrete domain at a sampling time of Ts.
num = [1]
den= [1 1 0]
Ts=0.1
sys = tf (num,den)
sysd = c2d(sys,Ts)
