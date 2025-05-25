%Step response with respect to R(s) 
clc
s=tf('s');
KA=80;
G1=5000/(s+1000);
G2=1/(s*(s+20));
Y=G1*KA*G2    %Series Nothing but multiple.
M=series(KA*G1,G2)
M1=feedback(Y,1)
step(M1)
grid on
