function H = hilbert(n)
    H = ones(n,n);
    for i=1:n
        v = i:i+n-1;
        H(i,:) = 1 ./ v;
    end
end