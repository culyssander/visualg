Algoritmo "Solucao11"
//  11) Faça um programa que recebe um numero e diga se este numero esta no intervalo de 1 à 12 e deve ser diferente de 8 ou 9.
Var
   numero: inteiro
Inicio

escreva("Digite o numero: ")
leia(numero)

se (numero = 8) ou (numero = 9) entao
     escreva("Diferente")
senao
     se (numero > 0) e (numero <= 12) entao
        escreva("Esta no intervalo.")
     senao
        escreva("Nao esta no intervalo")
     fimse
fimse

Fimalgoritmo