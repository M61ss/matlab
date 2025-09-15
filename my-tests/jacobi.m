function [x, k] = jacobi(A, Nmax, tau, b, x_old)
    
M = diag(A);
N = -(A - diag(M));

for i=1:Nmax
    x = M \ (N * x_old + b);
    if (norm(x - x_old) / norm(x)) < tau && (norm(A * x - b) / norm(b)) < tau       % Check relative error and residual
        k = i;
        break;
    end
    x_old = x;
end

end