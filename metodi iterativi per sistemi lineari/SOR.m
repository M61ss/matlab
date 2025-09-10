function [x,k] = SOR(x0,A,b,Nmax,tau,omega)
D = diag(diag(A));
E = -tril(A,-1);
F = -triu(A,1);
M = D/omega - E;
T = (1/omega -1)*D + F;
for k = 1:Nmax
    x = M\(T*x0+b);
    if ( norm(x-x0) < tau*norm(x0) ) && (norm(A*x-b) < tau*norm(b))
        break
    end
    x0 = x;
end
if k >= Nmax
    fprintf('\n Numero massimo di iterazioni raggiunto\n')
end

