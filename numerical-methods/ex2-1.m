function n2 = ejercicio1(n10)
% Escribir un programa que dado un numero en base 10, me devuelva un vector
% de 0 y 1 con su representacion en base 2
n2 = []
while n10 > 1
    resto = mod(n10, 2)
    n10 = floor(n10 / 2)
    n2 = [n2, resto]
end
n2 = [n2, 1]
n2 = n2(end:-1:1)
end
  