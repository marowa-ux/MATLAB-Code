clc
close all
fs = 8000; % Sampling frequency
f = 3; %Hz
%Define signal
t = 0:1/fs:1-1/fs;
A = 2;
s = 0.4;
%signal
x = A*sin(2*pi*f*t);
%noise
ns = s*randn(size(signal));
S_N_R = snr(x,ns);

bandwidth = obw(x,fs); % Bandwidth of the signal
%capacity
C = bandwidth*log2(1+SNR) % Capacity of the channel

