clc
clear all
s = tf('s'); 

G1 = 1; 
G2 = 0.2083/(s*(s+1.71)); 
K = 1000; 

G = K*G1*G2; 

H = 1/pi; 

M1 = series(feedback(G,H),H)

ltiview(M1);% for LTI analysis