Algoritmo "Solucao8"
// 8) Construa um programa em Java que recebe duas notas, o nome do aluno e calcule a média aritmétca, se for maior ou igual a dez escreve “Aprovado”se não”Reprovado”.

Var
nota1, nota2, media: real
nomeDoAluno: caracter

Inicio

escreva("Digite o nome do aluno: ")
leia(nomeDoAluno)

escreva("Digite a primeira nota: ")
leia(nota1)

escreva("Digite a segunda nota: ")
leia(nota2)

media <- (nota1 + nota2) / 2

se media >= 10 entao
   escreva("O (A) ", nomeDoAluno, " aprovado com media: ", media)
senao
   escreva("O (A) ", nomeDoAluno, " reprovado com media: ", media)
fimse
Fimalgoritmo