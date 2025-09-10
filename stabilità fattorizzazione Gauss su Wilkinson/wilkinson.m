function [A] = wilkinson(N)
A = eye(N) - tril(ones(N),-1);
A(:,N) = ones(N,1);