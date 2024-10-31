% Define transfer function
s = tf('s');
H = 5 / (s^2 + 4*s + 8);

% Step response
figure; step(H);
title('Step Response');