function x = ltrisol(r,b)
% It solves a linear system with low triangular associated matrix

n = length(b);
x = zeros(size(b));
for j=1:n
    s = 0;
    for i=1:j-1
        s = s + r(j,i)*x(i);
    end
    x(j) = (b(j)-s)/r(j,j);
end
end

% In this example I create a associated matrix A, I extract its low triangular
% sub-matrix R and I determine an arbitrary solution sol. So, I compute the
% known term b. Then, I compute the solution of the linear system defined
% by A and b. If x matches sol, my algorithm is correct.
A = [6 2 3; 4 6 1; 1 1 3];
R = tril(A);
sol = ones(length(A),1);
b=R*sol;
x = ltrisol(R,b);