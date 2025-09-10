function [alpha] = vandermonde(x,y)
n = length(x);
V = ones(n);
for j = 2:n
    V(:,j) = V(:,j-1).*x; %x.^(j-1);
end
alpha = V\y;