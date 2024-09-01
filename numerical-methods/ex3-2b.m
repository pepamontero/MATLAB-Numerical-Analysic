function P = ejercicio4b(A, B)
% A y B matrices cuadradas triangulares superiores de dimensión n
% P es el producto de matrices, tb de dim n
% se puede reciclar este ejercicio para triangulares inferiores simplemente
% trasponiendo las matrices A y B
P = []
n = length(A)
for i = 1 : n
    for j = i : n
        suma = 0   
        for k = 1 : j
            suma = suma + A(i, k)*B(k, j)
        end
        P(i, j) = suma
    end
end
end