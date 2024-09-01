function matriz = ejercicio4(N)
format long
for i = 1:N
    matriz(i, 1) = 10^(-i)
    h = matriz(i, 1)
    matriz(i, 2) = (sin(1 + h) - sin(1))/h
    aprox = matriz(i, 2)
    matriz(i, 3) = abs(cos(1)-aprox)
    matriz(i, 4) = (abs(cos(1)-aprox))/cos(1)
end
end