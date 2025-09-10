function [x,k,f] = GD_logistica(A,b,x,MaxIt,tol)


% parametri stepsize
alpha_min = 1e-3;               
alpha_max = 1e3;

% parametri linesearch:
gamma   = 1e-4;                   
delta    = 0.4;

% stepsize iniziale:
alpha = 1e-5;%0.99/norm(A)^2;

% calcolo della funzione obbiettivo:
Ax  = A*x;
num = exp(Ax); den = 1+num;
f  =  -sum(b.*Ax - log(den));
% calcolo del gradiente della parte differenziabile
g = -A'*(b - num./den ); 
fprintf('\n 0) F %g normg %g alpha %g',f,norm(g),alpha);
    
for k = 0:MaxIt
 
    % passo di steepest descent (forward)
    x = x - alpha*g;
    
    Ax  = A*x;
    num = exp(Ax); den = 1+num;
    f   =  -sum(b.*Ax - log(den));    
    g   = -A'*(b - num./den );
       
    fprintf('\n %g) F %g normg %g',k,f,norm(g));       
end