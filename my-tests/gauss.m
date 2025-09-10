function[L,U] = gauss(A)

n = length(A);

for k = 1:n-1   % For each column...
    for i = k+1:n   % ... for each row of that column ...
        A(i,k) = A(i,k) / A(k,k);   % ... compute multipliers and store them in kth column of A.
        for j = k+1:n   % For each multiplier ...
            A(i,j) = A(i,j) - A(i,k) * A(k,j);  % ... update elements on its same row using that.
        end
    end
end

L = tril(A,-1) + eye(n);
U = triu(A);

end