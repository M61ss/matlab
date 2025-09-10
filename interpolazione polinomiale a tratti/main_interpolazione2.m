clear all
close all

a = 0.2;
b = 0.9;
n = 8;
x = linspace(a,b,n)'; % nodi equispaziati

f = @(x)sin(15*x).*x.^2; 
y = f(x);
xplot = linspace(a,b,100)';
yplot = f(xplot);
figure,
plot(xplot,yplot,'LineWidth',1,'LineStyle',':');
hold on; plot(x,y,'oc','MarkerFaceColor','c');
%% 
plot(x,y,'LineWidth',1);
%% 

ycubic = cubico_tratti(x,y,xplot);
plot(xplot,ycubic,'-m');

yspline = interp1(x,y,xplot,'spline');
plot(xplot,yspline,'-k');

leg = legend('f','data','linear','cubic','spline');
set(leg,'Location','NorthWest');
