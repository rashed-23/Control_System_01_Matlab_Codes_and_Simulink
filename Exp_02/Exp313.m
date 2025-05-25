clc
clear all

k=2;

w=@(t,x) 10*(abs(2*t)<=0.5);

vnd= @(t,x) [x(2); -x(1)+k*(1-x(1)^2)*x(2)+w(t)];

[t,y]=ode45(vnd,[0,10],[-2,2]);

plot(t,y(:,1))
hold on
plot(t,y(:,2))


