function [X, Y] = ejercicio1(N)
h = 1/(N+1);
X = [];
for i = 1:N+2
    X(i) = i*h;
end
A = -2*eye(N) + diag(ones(1, N-1), 1) + diag(ones(1, N-1), -1) - h^2*eye(N);
b(1) = -1; b(N) = -2;
Y = [1; A\b'; exp(1)]


    
    