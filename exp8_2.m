% Consider a unity feedback system with forward path transfer function
% G(s) = 1 /(s2+10s+20). Convert this system in z -domain with T = 0.1 sec. Show the effect of addition of a PI controller on the system performance
num=1;
den=[1 10 20];
g1=tf (num,den)
t1=feedback(g1,1)
d1=c2d(t1,.1,'zoh')
step(d1,'g')
hold on
num1=10;
den1=[1 10 20];
g2=tf (num1,den1)
t2=feedback(g2,1)
d2=c2d(t2,.1, 'zoh')
step(d2,'m')
hold on
Kp=500;
Ki = 1
numc=[Kp Ki];
denc= [1 0]
numo=conv(numc,num)
deno=conv(den,denc)
g3=tf(numo,deno)
t3=feedback(g3,1)
d3= c2d(t3,.1,'zoh')
step(d3,'b')
hold on
Kp=500;
Ki = 100
numc=[Kp Ki];
denc= [1 0]
numo=conv(numc,num)
deno=conv(den,denc)
g3=tf(numo,deno)
t3=feedback(g3,1)
d3= c2d(t3,.1,'zoh')
step(d3,'r')
hold on
Kp=500;
Ki = 500
numc=[Kp Ki];
denc= [1 0]
numo=conv(numc,num)
deno=conv(den,denc)
g3=tf(numo,deno)
t3=feedback(g3,1)
d3= c2d(t3,.1,'zoh')
step(d3,'g')
hold on
