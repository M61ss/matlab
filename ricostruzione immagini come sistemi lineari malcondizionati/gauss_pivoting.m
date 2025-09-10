function [L,U,P] = gauss_pivoting(a)
n = length(a);
P = eye(n);
for k = 1:n-1
    [~,p] = max(abs(a(k:n,k)));
    r = p + k -1;
    t = a(k,:);
    a(k,:) = a(r,:);
    a(r,:) = t;
    t = P(k,:);
    P(k,:) = P(r,:);
    P(r,:) = t;
    if abs(a(k,k)) < eps
        error('matrice singolare');
    end
    % for i = k+1:n
    %     a(i,k) = a(i,k)/a(k,k);
    %     % for j = k+1:n
    %     %     a(i,j) = a(i,j) - a(i,k)*a(k,j);
    %     % end
    %     a(i,k+1:n) = a(i,k+1:n) - a(i,k)*a(k,k+1:n);
    % end
    a(k+1:n,k) = a(k+1:n,k)/a(k,k);
    a(k+1:n,k+1:n) = a(k+1:n,k+1:n) - a(k+1:n,k)*a(k,k+1:n);

end
U = triu(a);
L = tril(a,-1) + eye(n);