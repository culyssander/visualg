Algoritmo "Solucao17"
//17) Escreva um programa que leia dois valores para as variaveis A e B efectuar a troca dois valores de forma que a variavel A passa a ter o valor da variavel B e vise-versa. Apresente os valores trocados.

Var
a, b, c: inteiro
Inicio

escreva("Digite o valor de A: ")
leia(a)

escreva("Digite o valor de B: ")
leia(b)

escreval("O valor de A: ", a)
escreval("O valor de B: ", b)

c <- a
a <- b
b <- c

escreval("TROCA DE VALORES")
escreval("O valor de A: ", a)
escreval("O valor de B: ", b)

Fimalgoritmo