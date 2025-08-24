x = linspace(-pi,pi); 
y = linspace(-pi/2,pi/2); 
[X,Y] = meshgrid(x,y); 
Z = sin(X.*Y); 
mesh(X,Y,Z); 
title('Grafico della funzione sin(xy)'); 