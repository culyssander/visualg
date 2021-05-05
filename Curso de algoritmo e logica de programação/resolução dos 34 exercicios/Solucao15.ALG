Algoritmo "Solucao15"
// 15 - Em 2014, no Instituto Superior Politecnico do Cazenga (ISPOCA), na sala 208,tem um problema de como as eleicões do delegado na turma deve ocorrer. Para resolver o problema o Prof: Quitumba Culyssander Ferreira, pediu para criar um programa que solicita o voto do eleitor e exibe o nome do candidato votado. O numero identifica o candidato votado caso o numero não existir o voto será nulo, Apresenta um menu com os nomes dos candidatos a serem votados. Os candidatos são:
//1. Shaban
//2. Menenses Cirilo
//3. Eusebio de Sousa
//4. Binga
//5. Dorivaldo

Var

shaban, cirilo, eusebio, binga, dorivaldo: inteiro
contador, opcao, numeroDeEleitores:inteiro

Inicio

  escreva("Digite o numero de eleitores: ")
  leia(numeroDeEleitores)

  limpatela

  enquanto contador < numeroDeEleitores faca
  escreval("Bem-vindo ao programa de eleicao: ")
  escreval("1 - Shaban")
  escreval("2 - Menenses Cirilo")
  escreval("3 - Eusebio de Sousa")
  escreval("4 - Binga")
  escreval("5 - Dorivaldo")
  escreva("Escolha uma opcao eleitor ", contador + 1, ": ")
  leia(opcao)

  escolha(opcao)
  caso 1
       shaban <- shaban + 1
  caso 2
       cirilo <- cirilo + 1
  caso 3
       eusebio <- eusebio + 1
  caso 4
       binga <- binga + 1
  caso 5
       dorivaldo <- dorivaldo + 1
  outrocaso
        escreval("Voto nulo")
  fimescolha

  contador<-contador+1
  limpatela
  fimenquanto

  escreval("------------ Resultado ------------")
  escreval("Shaban: ", shaban)
  escreval("Menenses Cirilo: ", cirilo)
  escreval("Eusebio de Sousa: ", eusebio)
  escreval("Binga: ", binga)
  escreval("Dorivaldo: ", dorivaldo)

Fimalgoritmo