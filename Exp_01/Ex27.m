clc;
% According to the question
num = [1 1];
den = [1 3 1]; 
G = tf(num, den);
t = 0:0.1:30; % for 30 seconds
T = 4; % given period is 4s
sq_in = square(2*pi*t/T);
sq_res = lsim(G,sq_in,t);
plot(t,sq_in);
hold on;
plot(t,sq_res);
ylim([-2,2])
grid on