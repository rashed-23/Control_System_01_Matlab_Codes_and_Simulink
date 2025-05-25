clc
clear all

s = tf('s'); 
G = 1/(s*(s+7)*(s+11)) 

K1 = 860; % K<1360

T1=feedback(K1*G,1)

step(T1,10)  % For 10 seconds
hold         % hold and hold on are same
% Current plot held 

K2 = 1460; % K>1360

T2=feedback(K2*G,1)
step(T2,10)