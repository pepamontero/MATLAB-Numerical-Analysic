function resultado = ejercicio6(N)
A = [1, 1/7]
for i = 3:N
    A(i) = 22*A(i-1)/7 - 3*A(i-2)/7
end
resultado = A(N-1)
end
