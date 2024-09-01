clear all
% N := numero de nodos interiores
N = 1000;

h = 2/(N+1);
X = [];
for i = 1:N+2
    X(i) = (i-1)*h;
end

% Tenemos que A*YY = B*XX + c donde definimos estas matrices de la siguiente
% forma:

A = (-4-10*h^2)*eye(N) + (2+h)*diag(ones(1, N-1), 1) + (2-h)*diag(ones(1, N-1), -1);
B = (2*h^2)*eye(N);
c(1) = 3*(h-2);
c(N, 1) = -(2+h)*(exp(4)-2);
XX = (X(2:N+1))';
YY = A\(B*XX+c);        

Y = [3; YY; exp(4)-2];
S = 1.4745*exp((-1+sqrt(21))*X/2) + 1.5654*exp((-1-sqrt(21))*X/2) - 0.2*X - 0.04;

plot(X, Y', 'g')
hold on
plot(X, S, 'r')
hold off
figure
plot(X, S - Y')