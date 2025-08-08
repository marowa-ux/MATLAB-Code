close all;
clc;
%Define number of samples to take
fs = 8000;
f = 4; %Hz
%Define signal
t = 0:1/fs:2;
signal = 2*sin(2*pi*f*t);
nx = length(t); % Total number of samples
%Plot to illustrate that it is a sine wave
plot(t, signal,'linewidth',1);
title('Time-Domain Representation of Signal');
xlabel('Time (s)');
ylabel('Amplitude');
% Take fourier transform
fftSignal = fft(signal);
% Apply fftshift to put it in the form
% we are used to (see documentation)
fftSignal = fftshift(fftSignal)/(nx/2);
% Scaling done by dividing with (fs/2)
% Next, calculate the frequency axis,
% which is defined by the sampling rate
f = linspace(-fs/2,fs/2,nx);
% Since the signal is complex, we need to
% plot the magnitude to get it to
% look right, so we use abs (absolute value)
figure;
plot(f, abs(fftSignal),'linewidth',2);
title('Frequency-Domain Representation of Signal');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
xlim([-20 20])
%noise
sd = 2;
noise = sd*randn(size(signal)); % noise power = sd^2
figure
plot(t,noise, 'linewidth', 1)
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Representation of Noise');
fftNoise = fft(noise);
fftNoise = fftshift(fftNoise)/(nx/2);
figure
plot(f,abs(fftNoise), 'linewidth', 2)
title('Frequency-Domain Representation of Noise');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
xlim([-20 20])
%noisy signal
noisySignal = signal + noise;
figure
plot(t,noisySignal, 'linewidth', 1)
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Representation of Noisy Signal');
fftNoisySignal = fft(noisySignal);
fftNoisySignal = fftshift(fftNoisySignal)/(nx/2);
figure
plot(f,abs(fftNoisySignal), 'linewidth', 2)
title('Frequency-Domain Representation of Noisy Signal');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
xlim([-20 20])