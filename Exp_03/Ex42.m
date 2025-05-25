clc
clear all;

w = 0.1:0.1:10;
M = abs(0.25./((j*w).^2+j*w+0.25));
SMK = abs(j*w.*(j*w+1)./((j*w).^2+j*w+0.25));

plot(w,M,'r',w,SMK,'b'); 
xlabel('Frequency (rad/sec)'); 
ylabel('Magnitude'); 