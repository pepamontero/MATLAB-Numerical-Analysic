function letra = midni(n)
% función que recibe el número del DNI y devuele la letra del DNI
resto = mod(n, 23)
letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'V', 'H', 'L', 'C', 'K', 'E']
letra = letras(resto+1)
end