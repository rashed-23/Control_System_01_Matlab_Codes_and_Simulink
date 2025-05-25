clc
clear all


A = [0 1 0; 0 0 1; 0 -2 -3]; 
b = [0; 0; 1]; 
c = [1 0 0 ]; 
d = 0;

system=ss(A,b,c,d) % State Space Representation

eig(system)        % Eigen Values
TF=tf(system)      % Transfer Function

