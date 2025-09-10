function[L,U,P] = gaussPartialPivoting(A)

n = length(A);
P = eye(n);
for k = 1:n-1
    [m, P] = max(abs(A(k:n,k)));
    r = P + k-1;    % This is necessary because P is index of max value in range k:n. 
                    % We need to add k-1 to convert it into an index for the whole matrix A
    tmp = A(k,:);
    A(k,:) = A(r,:);
    A(r,:) = tmp;   
    
    tmp = P(k,:);
    P(k,:) = P(r,:);
    P(r,:) = tmp;

    A(k+1:n,k) = A(k+1:n,k) / A(k,k);
    A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k,k+1:n) * A(k+1:n,k);
end

L = tril(A,-1) + eye(n);
U = triu(A);
