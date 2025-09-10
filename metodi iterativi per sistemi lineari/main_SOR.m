clear all

n = 20;
h = 1/(n+1);
x = [1:n]'*h;
c = x*h^2;

A = diag(2+c) - diag(ones(n-1,1),-1) - diag(ones(n-1,1),1);
y = -exp(x).*(1-x) + (16*pi^2+x).*x.*sin(4*pi*x);
b = h^2*y;
b(1) = b(1) + 1;
b(n) = b(n) + exp(1);


x0 = rand(n,1);
tol = 1e-4;
Nmax = 200;

[x,k] = jacobi(x0,A,b,Nmax,tol);
fprintf('\n Jacobi k:%g',k);
[x,k] = gauss_seidel(x0,A,b,Nmax,tol);
fprintf('\n G-S k:%g',k);
omega = 1.6;
[x,k] = SOR(x0,A,b,Nmax,tol,omega);
fprintf('\n SOR k:%g',k);