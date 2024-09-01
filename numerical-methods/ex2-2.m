function n = ejercicio2(v)
% Escribir un programa que dado un numero en base 2 (representado por vector
% de 0 y 1), me devuelva el numero en base 10.
len = length(v)
n = 0
for k=1:len
    n = n + v(k) * 2^(len-k)
end
end