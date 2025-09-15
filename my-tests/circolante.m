function[C] = circolante(h)

n = length(h);
C = zeros(n, n);
C(1, :) = h(n:-1:1);

for i=2:n
    C(i, :) = [C(i-1, n), C(i-1, 1:n-1)];
end

end