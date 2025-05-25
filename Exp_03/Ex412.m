%Step response with respect to W(s) 
clc
s=tf('s');
KA=80;
G1=5000/(s+1000);
G2=1/(s*(s+20));
Mw=-feedback(G2,KA*G1)
step(Mw)
grid on
