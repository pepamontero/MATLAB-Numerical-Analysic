clear all
% N := numero de nodos interiores
N = 1000

h = 1/(N+1);
X = [];
for i = 1:N+2
    X(i) = (i-1)*h;
end

A = (-2-h^2)*eye(N) + diag(ones(1, N-1), 1) + diag(ones(1, N-1), -1);
b(1) = -1;
b(N) = -exp(1);
Y = [1; A\b'; exp(1)];

plot(X, Y', 'g')
hold on
plot(X, exp(X), 'r')
hold off
figure
plot(X, exp(X) - Y')   