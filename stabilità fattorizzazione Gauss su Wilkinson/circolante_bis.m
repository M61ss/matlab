function [C] = circolante_bis(h)
N = length(h);
r = N:-1:1;
c = (0:N-1)';
t = r + c;
T = mod(tril(t,-1),N) + triu(t);
C = h(T);