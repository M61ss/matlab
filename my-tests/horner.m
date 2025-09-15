function [px] = horner(x, alpha)

n = length(alpha);
px = alpha(n);      % initialize px as 0-th grade poly

for i = n-1:-1:1
    px = alpha(i) + px .* x;
end

end