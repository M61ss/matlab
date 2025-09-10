close all
clear all

a2 = 1.2;
a1 = 3.5;
a0 = 1.5;
m  = 5;
x  = linspace(-5,5,m)';
y  = a0 + a1*x + a2*x.^2 + randn(size(x))*2.5;
plot(x,y,'ok');