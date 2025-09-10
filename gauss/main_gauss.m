clear all

A = [ 6 2 3; 4 6 1; 1 1 3];
s = [ 1 2 3]';
b = A*s;

% fase 1
[L,U] = gauss(A); % equivale a [L,U] = lu(A);
% fase 2
y = ltrisol(L,b);% equivale a y = L\b;
x = utrisol(U,y);% equivale a x = U\y;

% fase 1 + fase 2 == A\b