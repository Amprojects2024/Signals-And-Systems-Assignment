% Define transfer function
H = 10 * (s + 1) / (s^2 + 6*s + 10);

% Pole-zero map
figure;
pzmap(H);
axis([-6 2 -4 4]); % Adjust axis limits
title('Pole-Zero Map');
grid on;