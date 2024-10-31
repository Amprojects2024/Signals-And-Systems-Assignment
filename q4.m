% Define parameters
f1 = 1; f2 = 10;
t = 0:0.01:10;

% Define x(t) and h(t)
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);
h = exp(-t).*(t>=0);

% Perform convolution
y = conv(x, h, 'same') * 0.01;

% Set axis limits
x_limits = [0 10];
y_limits = [-2 2]; % Adjust based on the amplitude of y(t)

% Plot results
subplot(3,1,1); plot(t, x); title('x(t) - Input Signal');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);

subplot(3,1,2); plot(t, h); title('Impulse Response h(t)');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);

subplot(3,1,3); plot(t, y); title('y(t) - Output Signal');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);
