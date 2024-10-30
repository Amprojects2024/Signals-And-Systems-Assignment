% Define the trapezoidal function x(t)
function y = x(t)
    y = zeros(size(t));  % Initialize output with zeros
    
    % Define the piecewise conditions
    y(t >= 0 & t < 2) = t(t >= 0 & t < 2);      % t for 0 <= t < 2
    y(t >= 2 & t <= 6) = 2;                      % 2 for 2 <= t <= 6
    y(t > 6 & t <= 8) = 8 - t(t > 6 & t <= 8);   % 8 - t for 6 < t <= 8
end

% Define the range of t for plotting
t = linspace(-2, 10, 1000);

% Compute each transformation
xt = x(t);
xt_minus_3 = x(t - 3);
x_2t = x(2 * t);
x_half_t = x(0.5 * t);
x_2t_plus_3 = x(2 * t + 3);

% Plot each transformation
figure;

% (a) x(t)
subplot(3, 2, 1);
plot(t, xt, 'b');
title('x(t)');
xlabel('t');
ylabel('x(t)');
grid on;

% (b) x(t - 3)
subplot(3, 2, 2);
plot(t, xt_minus_3, 'r');
title('x(t - 3)');
xlabel('t');
ylabel('x(t - 3)');
grid on;

% (c) x(2t)
subplot(3, 2, 3);
plot(t, x_2t, 'g');
title('x(2t)');
xlabel('t');
ylabel('x(2t)');
grid on;

% (d) x(1/2 * t)
subplot(3, 2, 4);
plot(t, x_half_t, 'm');
title('x(1/2 * t)');
xlabel('t');
ylabel('x(1/2 * t)');
grid on;

% (e) x(2t + 3)
subplot(3, 2, 5);
plot(t, x_2t_plus_3, 'c');
title('x(2t + 3)');
xlabel('t');
ylabel('x(2t + 3)');
grid on;

% Adjust layout
sgtitle('Trapezoidal Signal and Its Transformations')
