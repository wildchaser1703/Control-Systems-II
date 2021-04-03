% Phase Lead Lag Compensator
wm = 4.5;
alpha = 0.3;
T = 1/(wm*sqrt(alpha));
k= 10;
gnum = [k];
gden = [1 1 0];
uncompensated = tf(gnum,gden)
cnum = [T 1];
cden = [T*alpha 1];
compensator = tf(cnum,cden)
numo = conv(cnum,gnum);
deno = conv(cden,gden);

compensated = tf(numo,deno)
bode(uncompensated,'r',compensated ,'g')

uncomtr=feedback(uncompensated,1)
comtr=feedback(compensated,1)
step(uncomtr,'y')
hold on
step(comtr,'b')
