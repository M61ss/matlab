clear all
close all

x = linspace(-pi,pi);
y = linspace(-pi/2,pi/2);
[X,Y] = meshgrid(x,y);
Z = sin(X.*Y);
surf(X,Y,Z);
colorbar
colormap jet