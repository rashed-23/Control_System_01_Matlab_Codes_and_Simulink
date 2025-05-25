% Define the transfer function
numerator = [100];  % Coefficients of 100(s + 2)
denominator = [1,5,0];  % Coefficients of s(s+2)(s+15)

% Create transfer function
G = tf(numerator, denominator);

% Plot Bode diagram
bode(G);
grid on;
title('Bode Plot of G(s) = 100(s+2) / [s(s+2)(s+15)]');
