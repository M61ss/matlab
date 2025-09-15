function [c] = bisection(f, a, b, tau)

Nmax = floor(log2((b - a) / tau)) + 1;
fa = f(a);
fb = f(b);

for i=1:Nmax
    c = a + (b - a) / 2;
    fc = f(c);
    if (abs(fc) < tau)
        break;
    end
    if (fa * fc) < 0
        b = c;
        fb = fc;
    else
        a = c;
        fa = fc;
    end
    if (i == Nmax)
        warning("Max number of iteration reached.\n");
    end
end

end
