clear all
close all

load immagine_lena.mat

imagesc(obj); axis image; colormap('gray');
%% 

z = 2;

I1 = interp2(obj,z,'nearest');
I2 = interp2(obj,z,'linear');
I3 = interp2(obj,z,'spline');

figure
imagesc(I1); axis image; colormap('gray');
figure
imagesc(I2); axis image; colormap('gray');
figure
imagesc(I3); axis image; colormap('gray');
