function[x] = utrisol(a,b)

n = length(b);
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (b(i) - a(i, i+1:n) * x(i+1:n)) / a(i, i);
end

end