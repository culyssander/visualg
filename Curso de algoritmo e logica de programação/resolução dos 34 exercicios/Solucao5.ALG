Algoritmo "Solucao5"
//5) Construa um programa em Java que a partir da idade de uma pessoa determina que anos ele(a) nasceu, apresenta o nome e a idade.

Var
anoNascimento, anoActual, idade: inteiro
nome: caracter

Inicio

escreva("Digite o seu nome: ")
leia(nome)

escreva("Digite o ano presente: ")
leia(anoActual)

escreva("Digite o seu idade: ")
leia(idade)

anoNascimento <- anoActual - idade

escreva("O (A) ", nome, " nasceu em ", anoNascimento)

Fimalgoritmo