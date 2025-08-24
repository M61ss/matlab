x = linspace(1e-4,10*pi); 
y = sin(x)./x; 
subplot(2,1,1); 
plot(x,y); 
x1 = linspace(0,10*pi); 
y1 = sin(x1); 
subplot(2,1,2);
plot(x1,y1,':m');