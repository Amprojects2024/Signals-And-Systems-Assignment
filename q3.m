% Define time vector
t = 0:0.01:10;

% Define x(t) and h(t)
x = (t>=0 & t<3);
h = exp(-t).*(t>=0);

% Perform convolution
y = conv(x, h, 'same') * 0.01;

% Set axis limits
x_limits = [0 10];
y_limits = [-0.5 1.5]; % Adjust based on amplitude of y(t)

% Plot results
subplot(3,1,1); plot(t, x); title('Input Signal x(t)');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);

subplot(3,1,2); plot(t, h); title('Impulse Response h(t)');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);

subplot(3,1,3); plot(t, y); title('Output Signal y(t)');
xlabel('Time (t)'); ylabel('Amplitude');
axis([x_limits y_limits]);
