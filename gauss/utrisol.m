function [x] = utrisol(r,b)
n = length(b);
x = zeros(n,1);
for j = n:-1:1
    x(j) =  (b(j) - r(j,j+1:n)*x(j+1:n))/r(j,j);
    
end