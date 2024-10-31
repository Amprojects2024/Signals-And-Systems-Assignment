% Define transfer function
H = 7 / (s^2 + 3*s + 2);

% Impulse response
figure; impulse(H);
title('Impulse Response');