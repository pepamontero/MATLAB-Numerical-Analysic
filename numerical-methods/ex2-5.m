function raices = ejercicio5()
a = 1
b = -64-10^(-15)
c = 64*10^(-15)
x1 = (-b + sqrt(b^2 - 4*a*c))/(2*a)
x2 = (-b - sqrt(b^2 - 4*a*c))/(2*a)
raices = [x1; x2]
end