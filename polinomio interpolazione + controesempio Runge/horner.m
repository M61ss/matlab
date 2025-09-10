function [s] = horner(alpha,x)
n = length(alpha);
s = alpha(n)*ones(size(x));
for k = n-1:-1:1
    s = alpha(k) + s.*x;
end