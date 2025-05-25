clc;
s = tf('s'); % Create Laplace variable s
Y = (2*s^2 + 3*s + 1) / (s^2 + 4*s + 3);
% Find zeroes and poles
z = zero(Y); % Where the transfer function = 0
p = pole(Y); % Where the transfer function in infinity

disp('Zeroes of the transfer function:');
disp(z);

disp('Poles of the transfer function:');
disp(p);
