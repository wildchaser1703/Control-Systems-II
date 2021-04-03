% Consider a unity feedback control system having forward path transfer function G(s)
% Determine 	
% (i) step response in continuous and discrete domain.
% (ii) effect of sampling time on system response

n=[1]
d=[1 1 0]
sys=tf(n,d)
sysz=c2d(sys,1,'zoh')
sysc=feedback(sys,1)
syscz=feedback(sysz,1)
step(syscz,'b')
hold on
sysz1=c2d(sys,.5,'zoh')
syscz2=feedback(sysz1,1)
step(syscz2,'g')
hold on
sysz2=c2d(sys,.10,'zoh')
syscz3=feedback(sysz2,1)
step(syscz3,'m')
hold on
