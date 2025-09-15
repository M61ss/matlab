function [x, k] = gaussSiedel(A, Nmax, b, x_old, tau)

M = tril(A);
N = -triu(A, 1);

for i=1:Nmax
    x = M \ (N * x_old + b);
    if (norm(x - x_old) / norm(x)) < tau && (norm(A * x - b) / norm(b)) < tau
        k = i;
        break;
    end
    x_old = x;
end

end