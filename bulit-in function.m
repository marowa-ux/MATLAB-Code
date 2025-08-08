clc
close all
fs = 40e3;% sampling frequency
f = 50;% frequency of the signal
t = 0:1/fs:1/f;%discrete time
A = 2; 
x = A*sin(2*pi*f*t);% discrete signal
%--------Quantization------------%
n = 3;
L =(2^n);
delta=(max(x)-min(x))/(L-1);
xq = min(x)+(round((x-min(x))/delta)).*delta;
%--------END------------%
plot(t,x,'r-.', 'linewidth',1.5);
hold on;
plot(t,xq,'k-.', 'linewidth',1.5);
%plotting wave forms.
xlabel('time')
ylabel('amplitude')
title('example of manual quantization')
legend('Original signal','quantized signal')