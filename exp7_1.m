% Design a Phase -Lag compensator for the system  G(s)= 1/ s(s+1) such that the steady-state error is less than 0.1 for a unit ramp input and a percent overshoot less than 25%
% Steady state error specification K ?10
% Percent Overshoot specification PMcomp ? 45
wm=0.84;
beta=10;
T=10/(wm);
k=10;
gnum=[k];
gden=[1 1 0];
uncompensated=tf(gnum, gden)
Cnum=[T, 1];
Cden= [T * beta 1];
compensator= tf(Cnum, gnum);
numo= conv(Cnum, gnum);
deno=conv(Cden, gden);
compensated=tf(numo, deno);
bode(uncompensated, 'r', compensated, 'g')
uncomtr = feedback(uncompensated, 1)
comtr = feedback (compensated, 1)
step(uncomtr, 'y')
hold on
step(comtr, 'b')
