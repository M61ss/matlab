function [x,k] = gauss_seidel(x0,A,b,Nmax,tau)
M = tril(A);
F = -triu(A,1);
for k = 1:Nmax
    x = M\(F*x0+b);
    if ( norm(x-x0) < tau*norm(x0) ) && (norm(A*x-b) < tau*norm(b))
        break
    end
    x0 = x;
end
if k >= Nmax
    fprintf('\n Numero massimo di iterazioni raggiunto\n')
end

