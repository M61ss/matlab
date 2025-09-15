function[V] = vandermonde(x,n)

m = length(x);
V = ones(m,n);
for i=2:n
    V(:, i) = V(:, i-1) .* x;
end

end