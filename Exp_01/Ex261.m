clc;
clear;
s = tf('s');
G = (s+1)/(s^2 + 3*s + 1);
t = 0:0.1:20; % Time vector
ramp_in = t; % Ramp input
para_in = t.^2; % Parabolic input
% Compute system responses
ramp_res = lsim(G, ramp_in, t);   %using lsim command
para_res = lsim(G, para_in, t);
% Plot the results
figure;
% Ramp Input Response
subplot(2,1,1);
plot(t, ramp_in, 'b', 'LineWidth', 1.5); % 
hold on;
plot(t, ramp_res, 'r', 'LineWidth', 1.5); 
xlabel('Time', 'FontWeight', 'bold', 'Color', 'blue'); 
ylabel('Response', 'FontWeight', 'bold', 'Color', 'blue');
title('Response to Ramp Input [r(t) = t]', 'FontWeight', 'bold'); 
legend('Input', 'Response');
grid on
% Parabolic Input Response
subplot(2,1,2);
plot(t, para_in, 'b', 'LineWidth', 1.5); 
hold on;
plot(t, para_res, 'r', 'LineWidth', 1.5); 
xlabel('Time', 'FontWeight', 'bold', 'Color', 'blue');
ylabel('Response', 'FontWeight', 'bold', 'Color', 'blue'); 
title('Response to Parabolic Input [p(t) = t^2]', 'FontWeight', 'bold');
legend('Input', 'Response');
grid on
