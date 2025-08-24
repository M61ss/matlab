x = linspace(1e-4,20); 
y1 = 1./x; y2 = 1./x.^2; 
y3 = 1./x.^3; semilogy(x,y1); 
hold on; 
semilogy(x,y2,'-r'); 
semilogy(x,y3,'-k'); 
legend('1/x','1/x^2','1/x^3');