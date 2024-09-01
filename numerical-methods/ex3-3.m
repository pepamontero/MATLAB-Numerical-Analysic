function [P, L, U] = mipalu(A)
% función que recibe una matriz A cuadrada invertible de orden n
% y devuelve las matrices P, L y U de la factorización PA=LU de una matriz
n = length(A);
P = eye(n);
L = eye(n);
U = A;
for j = 1:n
    for i = j:n % buca el "pivote de Gauss" distinto de 0 
        if U(i, j) ~= 0
            U([i, j], :) = U([j, i], :);
            P([i, j], :) = P([j, i], :);
            L([i, j], 1:j-1) = L([j, i], 1:j-1); % en la L hago la misma permutación pero sólo por debajo de la diagonal
            break
        end
    end
    for i = j+1:n % "hace ceros" por debajo del pivote
       if U(i, j) ~= 0
           L(i, j) = U(i, j)/U(j, j);
           U(i, :) = U(i, :) - L(i, j)*U(j, :);
       end
    end
end