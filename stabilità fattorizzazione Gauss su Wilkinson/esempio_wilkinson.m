clear all
N   = 100;
A   = wilkinson(N);
sol = randn(N,1);
b   = A*sol;

[L,U,P] = lu(A);
y  = L\(P*b);
x1 = U\y; %soluzione calcolata con algoritmo 1(Gauss)

[Q,R] = qr(A);
y = Q'*b;
x2 = R\y; %output algoritmo 2(QR)

err1 = norm(x1-sol)/norm(sol);
err2 = norm(x2-sol)/norm(sol);

fprintf('\n err1:%g (Gauss)',err1);
fprintf('\n err2:%g (QR)\n',err2);