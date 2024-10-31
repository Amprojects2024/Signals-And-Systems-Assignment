% Define transfer function
H = (s + 1) / (s^2 + 4*s + 4);

% Step response and Pole-Zero Map
figure; 
subplot(2,1,1); step(H);
title('Step Response');
subplot(2,1,2); pzmap(H);
title('Pole-Zero Map');
axis([-4 0 -3 3]); % Adjust axis limits for better visualization