% Define time vector
t = 0:0.01:2*pi;

% Define original square wave
x = square(t);

% Fourier series approximation for 5, 10, 20 terms
N = [5, 10, 20];
x_limits = [0 2*pi];
y_limits = [-1.5 1.5];

for i = 1:3
    approx = 0;
    for n = 1:N(i)
        approx = approx + (4/pi) * (sin((2*n-1)*t) / (2*n-1));
    end
    subplot(3,1,i);
    plot(t, x, 'b', t, approx, 'r'); 
    title(['Fourier Series Approximation with ', num2str(N(i)), ' Terms']);
    xlabel('Time (t)');
    ylabel('Amplitude');
    axis([x_limits y_limits]);
end
