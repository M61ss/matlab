function[L,U] = gaussOptimized(A)

n = length(A);
for k = 1:n-1
    A(k+1:n, k) = A(k+1:n, k) / A(k, k);
    A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - A(k+1:n, k) * A(k, k+1:n);
end

L = tril(A, -1) + eye(n);
U = triu(A);