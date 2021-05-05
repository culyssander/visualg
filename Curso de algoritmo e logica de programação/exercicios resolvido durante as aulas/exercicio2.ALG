Algoritmo "calculadora"

Var
numero1, numero2: real
soma, subtracao, multiplicacao, divisao: real

Inicio

escreva("Digite o 1º numero: ")
leia(numero1)

escreva("Digite o 2º numero: ")
leia(numero2)

soma <- numero1 + numero2

subtracao <- numero1 - numero2

multiplicacao <- numero1 * numero2

divisao <- numero1 / numero2
escreval("-----------------------------")
escreval(numero1, " + ", numero2, " = ", soma)
escreval(numero1, " - ", numero2, " = ", subtracao)
escreval(numero1, " x ", numero2, " =  ", multiplicacao)
escreval(numero1, " / ", numero2, " = ", divisao)


Fimalgoritmo