function C = circolante(v)
    n = length(v);
    C = zeros(n, n);
    for i=1:n
        C(:, i) = circshift(v, i);
    end
end