function normas = ejercicio3(A)
sumas1 = []
sumasInf = []
sumaF = 0
n = length(A) % A cuadrada
for i = 1 : n
    suma1 = 0
    sumaInf = 0
    for j = 1 : n
        suma1 = suma1 + abs(A(j,i))
        sumaInf = sumaInf + abs(A(i,j))
        sumaF = sumaF + (abs(A(i,j)))^2
    end
    sumas1 = [sumas1, suma1]
    sumasInf = [sumasInf, sumaInf]
end
norma1 = max(sumas1)
normaInf = max(sumasInf)
normaF = sqrt(sumaF)
normas = [norma1, normaInf, normaF]
end