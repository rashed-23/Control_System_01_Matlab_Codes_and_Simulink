clc
clear all
s = tf('s'); 

G1 = 100/(s+100); 
G2 = 0.2083/(s*(s+1.71)); 
K = 1000; 

G = K*G1*G2; 

H = 1/pi; 

M = series(feedback(G,H),H)

ltiview(M);% for LTI analysis