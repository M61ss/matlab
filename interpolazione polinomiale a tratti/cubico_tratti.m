function [y] = cubico_tratti(xi,yi,x)
y = zeros(size(x));
n = length(xi);
for i = 1:n-1
    ind = find( x>=xi(i) & x<=xi(i+1) );
    if i==1
        p      = polyfit(xi(1:3),yi(1:3),2);
    elseif i==n-1
        p      = polyfit(xi(n-2:n),yi(n-2:n),2);
    else
        p      = polyfit(xi(i-1:i+2),yi(i-1:i+2),3);
    end
   y(ind) = polyval(p,x(ind));
end

