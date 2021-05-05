Algoritmo "Solucao19"
//19) Escreve um programa que calcule uma equação do segundo grau.
Var
a, b, c: inteiro
delta, x1, x2: real
Inicio

escreva("Digite o valor de A: ")
leia(a)

escreva("Digite o valor de B: ")
leia(b)

escreva("Digite o valor de C: ")
leia(c)

delta <- RaizQ(Quad(b) - 4 * a * c)

x1 <- (-b + delta) / 2 * a
x2 <- (-b - delta) / 2 * a

escreval("O valor de X1 = ", x1)
escreval("O valor de X2 = ", x2)


Fimalgoritmo