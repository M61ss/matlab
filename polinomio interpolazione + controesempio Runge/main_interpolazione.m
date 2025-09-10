clear all
close all

a = -1;
b = 1;
n = 21;
x = linspace(a,b,n)'; % nodi equispaziati
xcheb = cos( (2*[0:n-1]+1)*pi/(2*n) )'; %nodi di Chebychev

f = @(x)1./(1+25*x.^2); %@(x)1./x;
y = f(x);

[alpha] = vandermonde(x,y); % p = polyfit(x,y,n-1);
                            % p = polyval(p,xplot);
[alphacheb] = vandermonde(xcheb,f(xcheb));


xplot = linspace(a,b,100);
plot(xplot,f(xplot));
hold on;
plot(x,y,'ok');
p = horner(alpha,xplot); %p = polyval(alpha(n:-1:1),xplot);
plot(xplot,p,'-r');
legend('f(x)','punti','p_n(x)');
title('nodi equispaziati')

figure,
plot(xplot,f(xplot));
hold on;
plot(x,y,'ok');
pcheb = horner(alphacheb,xplot);
plot(xplot,pcheb,'-r');
title('nodi di Chebychev')
legend('f(x)','punti','p_n(x)');
%% 

figure,
plot(f(xplot)-p); title('resto con nodi equispaziati');

figure,
plot(f(xplot)-pcheb); title('resto con nodi di Chebychev');
