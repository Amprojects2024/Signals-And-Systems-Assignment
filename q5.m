% Define time vectors
t1 = 0:0.01:2;
t2 = 0:0.01:1;

% Define x(t) and h(t)
x = sin(2*pi*t1);
h = t2;

% Perform convolution
y = conv(x, h, 'same') * 0.01;

% Set axis limits
x_limits = [0 2];
y_limits = [-1.5 1.5];  % Adjust y-limits to include negative values

% Plot each signal and the convolution result
subplot(3,1,1); plot(t1, x); title('x(t) = sin(2πt)');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);

subplot(3,1,2); plot(t2, h); title('h(t) = t');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);

subplot(3,1,3); plot(t1, y(1:length(t1))); title('y(t) = x(t) * h(t)');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);