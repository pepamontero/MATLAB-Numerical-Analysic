function v = recurrencia(a0, a1, N)
% Elaborar una funcion que tomando como datos los numeros a0;a1;N devuelva un vector
% con los N primeros elementos de la sucesion definida por la recurrencia:
% an = an-1 + an-2:
v(1) = a0
v(2) = a1
for k=3:N+1
    v(k) = v(k-1) + v(k-2)
end
end