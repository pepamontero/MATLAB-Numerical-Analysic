function epsilon = ejercicio3()
% Determinar el epsilon de la maquina. Para ello, calcular 1 + x con x = 2^-i
% para para i = 1, 2, ... mientras que 1+x > 1. Comparar con el comando eps de MATLAB.
i = 1
x = 2^(-i)
while 1+x > 1
    x = 2^(-i)
    i = i +1
epsilon = x
end
end
    