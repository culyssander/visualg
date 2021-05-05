Algoritmo "Solucao4"
//4) Construa um programa em visualg que a partir do ano de nascimento de uma pessoa determina quantos anos ele(a) tem, apresenta o nome e a idade.

Var
anoNascimento, anoActual, idade: inteiro
nome: caracter

Inicio

escreva("Digite o seu nome: ")
leia(nome)

escreva("Digite o ano presente: ")
leia(anoActual)

escreva("Digite o seu ano de nascimento: ")
leia(anoNascimento)

idade <- anoActual - anoNascimento

escreva("O (A) ", nome, " tem ", idade, " de idades.")

Fimalgoritmo