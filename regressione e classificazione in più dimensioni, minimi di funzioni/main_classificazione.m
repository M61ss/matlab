close all
clear all

load MNIST.mat

Y_train(Y_train < 0) = 0;
Y_test(Y_test < 0) = 0;

[m,p] = size(X_train);
A = [ones(m,1), X_train];
y = Y_train;
alpha0 = rand(p+1,1);
%% 

MaxIt = 2000;
tol = 0;

[alpha,k,f] = GD_logistica(A,y,alpha0,MaxIt,tol);
%% 

Ax = A*alpha;

y_pred = 1./(1+exp(-Ax));

y_pred(y_pred >= 0.5) = 1;
y_pred(y_pred < 0.5)  = 0;
errore_train = sum(y_pred ~= y)/m;

fprintf('\n errore di classificazione (train): %g',errore_train)
%% 


m_test = size(Y_test,1);
A_test = [ones(m_test,1) X_test];
y_test = Y_test;
%% 

Ax = A_test*alpha;

y_pred = 1./(1+exp(-Ax));

y_pred(y_pred >= 0.5) = 1;
y_pred(y_pred < 0.5)  = 0;
errore_test = sum(y_pred ~= y_test)/m_test;

fprintf('\n errore di classificazione (test): %g',errore_test)