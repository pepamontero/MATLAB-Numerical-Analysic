function producto = ejercicio4a(v, A)
% v vector fila 1xn, A matriz cudrada de dim n triangular superior
producto = []
n = length(A) 
for j = 1 : n
    suma = 0
    for i = 1 : j
        suma = suma + v(i)*A(i, j)
    end
    producto = [producto, suma]
end