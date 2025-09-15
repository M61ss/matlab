function[alpha] = minSquareQR(x, y, n)

A = vandermonde(x,n);
[Q, R] = qr(A);
R = R(1:n, :);
y_tilde = Q' * y;
alpha = R \ y_tilde(1:n);

end