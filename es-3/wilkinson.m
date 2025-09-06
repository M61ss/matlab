function W = wilkinson(n)
    W = tril(ones(n,n)-2,-1) + eye(n);
    W(:,n) = 1;
end