clear all
close all

%definizione dei punti da interpolare
Z = [0.25 0 1 0.5; 0 1 0.5 1; 0.25 0 1 0; 0.5 1 0 0.5]+0.25;
n = length(Z);
x = [0:n-1];
[X,Y] = meshgrid(x);

%
figure(1)
stem3(X,Y,Z);
hold on;
plot3(X,Y,zeros(size(X)),'ok','MarkerFaceColor','k');
set(gca,'XTick',x,'YTick',x,'XTickLabel',[],'YTickLabel',[],'ZTickLabel',[]);
legend('punti di interpolazione','nodi');
%% 
r = 4; %fattore di raffinamento
figure(2), 
imagesc(Z);axis image;
[X,Y] = meshgrid(x);
figure(3); surf(Z);
Zbilinear = interp2(Z,r,'linear');
figure(4); imagesc(Zbilinear);axis image;title('interpolazione bilieare')
figure(5); surf(Zbilinear);title('interpolazione bilieare')
%% 

Zbicubic = interp2(Z,r,'cubic');
figure(6); imagesc(Zbicubic);axis image;title('interpolazione bicubica')
figure(7); surf(Zbicubic);title('interpolazione bicubica')
%% 

Zspline = interp2(Z,r,'spline');
figure(8); imagesc(Zspline);axis image; title('interpolazione spline 2D')
figure(9); surf(Zspline);title('interpolazione spline 2D')