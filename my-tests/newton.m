function [x] = newton(f, df, x, tau, Nmax)

for i = 1:Nmax
    x_new = x - f(x) / df(x);
    if ((abs(x_new - x) / abs(x_new)) < tau) && (abs(f(x)) <= tau)
        break;
    end
    x = x_new;
end

end