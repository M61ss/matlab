function [x,k] = jacobi(x0,A,b,Nmax,tau)
d = diag(A);
T = -(A - diag(d));
for k = 1:Nmax
    x = (T*x0 + b)./d;
    if ( norm(x-x0) < tau*norm(x0) ) && (norm(A*x-b) < tau*norm(b))
        break
    end
    x0 = x;
end
if k >= Nmax
    fprintf('\n Numero massimo di iterazioni raggiunto\n')
end

