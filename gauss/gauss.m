function [L,U] = gauss(a)
n = length(a);
for k = 1:n-1
    if abs(a(k,k)) < eps
        error('perno troppo piccolo');
    end
    for i = k+1:n
        a(i,k) = a(i,k)/a(k,k);
        % for j = k+1:n
        %     a(i,j) = a(i,j) - a(i,k)*a(k,j);
        % end
        a(i,k+1:n) = a(i,k+1:n) - a(i,k)*a(k,k+1:n);
    end
end
U = triu(a);
L = tril(a,-1) + eye(n);