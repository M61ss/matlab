function [x] = ltrisol(r,b)
n = length(b);
x = zeros(n,1);
for j = 1:1:n
    x(j) =  (b(j) - r(j,1:j-1)*x(1:j-1))/r(j,j);
    %x(j) =  (b(j) - sum(r(j,1:j-1)'.*x(1:j-1)))/r(j,j);
    
end

