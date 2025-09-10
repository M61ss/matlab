function[x] = ltrisol(r,b)

n = length(b);
x = zeros(n, 1);
for i = 1:n
    x(i) = (b(i) - r(i, 1:i-1) * x(1:i-1)) / r(i, i);
end

end