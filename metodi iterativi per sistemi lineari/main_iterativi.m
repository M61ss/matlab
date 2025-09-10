clear all

n = 10;
A = rand(n) + n*eye(n);
sol = ones(n,1);
b = A*sol;

x0 = rand(n,1);
tol = 1e-4;
Nmax = 2*n;

[x,k] = jacobi(x0,A,b,Nmax,tol);
err = norm(sol - x)/norm(sol);
fprintf('\nJacobi: k= %g, errore: %g\n',k,err);

[x,k] = gauss_seidel(x0,A,b,Nmax,tol);
err = norm(sol - x)/norm(sol);
fprintf('\nG-S:  k= %g, errore: %g\n',k,err);