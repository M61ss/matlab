close all
clear all

load durer.mat
imagesc(X); axis image; colormap('gray');

%% 

load detail.mat
figure, imshow(X,[]);
set(gcf,'Position',[67.4000  372.2000  437.6000  359.2000]);
[m,n] = size(X)
%% 

[U,S,V] = svd(X);
sigma = diag(S);
figure,
plot(sigma,'LineWidth',1.5);
%% 

q = 25;
Xcompr = U(:,1:q)*S(1:q,1:q)*V(:,1:q)';

figure, imshow(Xcompr,[]);
set(gcf,'Position',[979.4000  372.2000  437.6000  359.2000]);
%% 

size_compr = m*q+n*q+q;
fprintf('\n Immagine compressa: %g, rapporto: %g\n',size_compr,size_compr/m/n);
%% 
