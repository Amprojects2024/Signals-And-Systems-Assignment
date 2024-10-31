% Define time vector and original sawtooth wave
t = -pi:0.01:pi;
x = sawtooth(t);

% Fourier series approximation for 5, 10, 20 terms
N = [5, 10, 20];
y_limits = [-2.5 2.5];

for i = 1:3
    approx = 0;
    for n = 1:N(i)
        approx = approx + (2*(-1)^(n+1)/n) * sin(n*t);
    end
    subplot(3,1,i);
    plot(t, x, 'b', t, approx, 'r--');
    title(['Fourier Series Approximation with ', num2str(N(i)), ' Terms']);
    xlabel('Time (t)');
    ylabel('Amplitude');
    axis([-pi pi y_limits]);
end