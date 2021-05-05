Algoritmo "Solucao13"
// 13) Construa um programa em visualg que que recebe três nomes e verifica se são iguais.
Var
nome1, nome2, nome3: caracter
Inicio

escreva("Digite o primeiro nome: ")
leia(nome1)

escreva("Digite o segundo nome: ")
leia(nome2)

escreva("Digite o terceiro nome: ")
leia(nome3)

se (nome1 = nome2) e (nome1 = nome3) e (nome2 = nome3) entao
   escreva("Nomes iguais")
senao
     escreva("Nomes diferentes")
fimse

Fimalgoritmo