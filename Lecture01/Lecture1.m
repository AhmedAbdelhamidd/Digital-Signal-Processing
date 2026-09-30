%% Assignment 1 - Visualizing Simple Signals
clear;
close all;
clc;

%% Basic parameters
Fs = 1000;                 % Sampling frequency (Hz)
t = 0:1/Fs:1;              % Time vector (1 second)

%% 1. Generate a 5 Hz sine wave (Amplitude = 1)
f = 5;
x = 1*sin(2*pi*f*t);

fig1 = figure('Name', 'Task 1 - Sine Wave');
plot(t, x, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('5 Hz Sine Wave');
grid on;
drawnow;
saveas(fig1, 'sine_wave_5Hz.png');

%% 2. Compare frequencies: 2 Hz, 5 Hz, 10 Hz (subplots)
x2  = sin(2*pi*2*t);
x5  = sin(2*pi*5*t);
x10 = sin(2*pi*10*t);

fig2 = figure('Name', 'Task 2 - Frequency Comparison');

subplot(3,1,1);
plot(t, x2, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('2 Hz');
grid on;

subplot(3,1,2);
plot(t, x5, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('5 Hz');
grid on;

subplot(3,1,3);
plot(t, x10, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('10 Hz');
grid on;

drawnow;
saveas(fig2, 'frequency_comparison.png');

%% 3. Compare amplitudes: 0.5, 1, 2 (subplots)
f = 5;   % same frequency for all three

xA1 = 0.5*sin(2*pi*f*t);
xA2 = 1.0*sin(2*pi*f*t);
xA3 = 2.0*sin(2*pi*f*t);

fig3 = figure('Name', 'Task 3 - Amplitude Comparison');

subplot(3,1,1);
plot(t, xA1, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Amplitude = 0.5');
ylim([-2.5 2.5]);
grid on;

subplot(3,1,2);
plot(t, xA2, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Amplitude = 1');
ylim([-2.5 2.5]);
grid on;

subplot(3,1,3);
plot(t, xA3, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Amplitude = 2');
ylim([-2.5 2.5]);
grid on;

drawnow;
saveas(fig3, 'amplitude_comparison.png');

%% 4. Add noise to a signal (subplots)
rng(1);                                % same noise every run
clean_signal = sin(2*pi*5*t);

noise = 0.4*randn(size(t));
noisy_signal = clean_signal + noise;

fig4 = figure('Name', 'Task 4 - Clean vs Noisy');

subplot(2,1,1);
plot(t, clean_signal, 'LineWidth', 1.2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Clean Signal');
grid on;

subplot(2,1,2);
plot(t, noisy_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Noisy Signal');
grid on;

drawnow;
saveas(fig4, 'clean_vs_noisy_signal.png');

disp('Done. All figures were created and saved.');