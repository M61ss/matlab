clear all

A = [6 0 0; 1 -2 0; 1 0 1]';
s = [1;-1;1];
b = A*s;

%x = ltrisol(A,b);
x = utrisol(A,b);