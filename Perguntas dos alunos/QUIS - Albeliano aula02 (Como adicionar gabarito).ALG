Algoritmo "Quis"

procedimento inicializacaoDasPerguntas()
inicio
   perguntas[1] <- "Ocorre a fus�o quando?"
   perguntas[2] <- "O que � Inercia?"
   perguntas[3] <- "S�o exemplos de propriedades Gerais da mat�ria?"
   perguntas[4] <- "Existem 2 tipos de propriedades da mat�ria. Quais s�o elas?"

fimprocedimento

procedimento inicializacaoDasRespostas()
inicio
   // Poderia usar um loop ou estrutura de repeticao
   respostas[1] <- "a) Quando passa do estado liquido para o s�lido"
   respostas[2] <- "b) Quando passa do estado Liquido para o gasoso"
   respostas[3] <- "c) Quando passa do estado solido pro liquido"
   respostas[4] <- "d) Quando passa do estado Liquido para o gasoso"
   alinhaDaRespostaCorreta[1] <-  "c"

   respostas[5] <- "a) A mat�ria tem de ocupar um lugar no espa�o"
   respostas[6] <- "b) Dois corpos n�o podem ocupar, simultaneamente o mesmo lugar no espa�o"
   respostas[7] <- "c) Consiste em ter volume reduzido quando submetida a determinada press�o"
   respostas[8] <- "d) A mat�ria permanece na situa��o em que se encontra, seja em movimento, seja em repouso"
   alinhaDaRespostaCorreta[2] <- "d"

   respostas[9] <- "a) Extens�o, In�rcia, Impenetrabilidade, Compressibilidade, Elasticidade, Divisibilidade e Indestrutibilidade"
   respostas[10] <- "b) Dureza, Brilho, Maleabilidade, Ductilidade, Densidade � Magnetismo"
   respostas[11] <- "c) Propriedades organol�pticas e Ponto de fus�o e ebuli��o"
   respostas[12] <- "d) Todas est�o errada"
   alinhaDaRespostaCorreta[3] <- "a"

   respostas[13] <- "a) Propriedades Normais e anormais"
   respostas[14] <- "b) Propriedades Simples e raras"
   respostas[15] <- "c) Propriedades Gerais e especificas"
   respostas[16] <- "d) Propriedades antigas e atuais"
   alinhaDaRespostaCorreta[4] <-  "c"

fimprocedimento


procedimento menuInicial()
var
   opcao: inteiro
inicio
   escreval("                       ",contadorDeVezesQueJogas+1,"� Rodada")
   Escreval("------------------------------------------------------")
   Escreval("|                    MENU DE op��es                    |")
   Escreval("------------------------------------------------------")
   Escreval("|  0 - SAIR DO quis                                    |")
   Escreval("|  1 - INICIAR quis                                    |")
   Escreval("|  2 - RANKING                                         |")       //selecionar o que deseja fazer
   Escreval("|  3 - GABARITO                                        |")
   Escreval("------------------------------------------------------")
   Escreva("O QUE DESEJA FAZER ? ")
   leia(opcao)

   se opcao <> 0 entao
      escolha opcao faca
      caso 1
           inicioDoQuis()
      caso 2
         listaRanking()
      caso 3
         gabarito()
      outrocaso
         limpatela
         escreval("OPCAO INVALIDA.")
         menuInicial()
      fimescolha
   senao
      Escreval("Finalizando quis")
   fimse
fimprocedimento

procedimento inicioDoQuis()
var
   nome: caracter
   opcao: caracter
   certas, erradas, pontos,i, j, ajudador: inteiro
   
inicio

   limpatela

   Escreva("Digite o seu nome: ")
   leia (nome)
   
   para i de 1 ate 4 faca
   Escreval("--------------------------------------------------------")
   Escreval("|                         quis                         |")
   Escreval("|                  ", i ,"� Pergunta                        |")
   Escreval("--------------------------------------------------------")
   Escreval(i, " - ", perguntas[i])
   
       escolha i faca
          caso 1
               ajudador <- 1
          caso 2
               ajudador <- 5
          caso 3
               ajudador <- 9
          caso 4
               ajudador <- 13
       fimescolha
   
       para j de ajudador ate ajudador+3 faca
           Escreval(respostas[j])
       fimpara

       Escreva("Resposta: ")
       leia(opcao)

       se opcao = alinhaDaRespostaCorreta[i] entao
           certas <- certas+1
           pontos <- pontos + 100
       senao
           erradas <- erradas+1
       fimse

       limpatela
   fimpara
   
   contadorDeVezesQueJogas <- contadorDeVezesQueJogas + 1
   ranking[contadorDeVezesQueJogas, 1] <- nome
   ranking[contadorDeVezesQueJogas, 2] <- numpcarac(certas)
   ranking[contadorDeVezesQueJogas, 3] <- numpcarac(erradas)
   ranking[contadorDeVezesQueJogas, 4] <- numpcarac(pontos)
   
   resultadoDoQuis(nome, numpcarac(certas), numpcarac(erradas), numpcarac(pontos))
   limpatela
   menuInicial()
fimprocedimento

procedimento resultadoDoQuis(nome, certas, erradas, pontos: caracter)
var
paragem: inteiro
inicio
 Escreval("--------------------------------------------------------")
      Escreval("|                          quis                        |")
      Escreval("|                 Obrigado por particpar!!             |")
      Escreval("--------------------------------------------------------")

      Escreval("")
      Escreval("********")
      Escreval("*                  Parabens: ", nome,"                    *")
      Escreval("*                  Voc� acertou: ", certas,"                    *")
      Escreval("*                  Voc� errou: ", erradas,"                      *")
      Escreval("*                  Voc� fez: ", pontos," pontos                     *")
      Escreval("********")
      Escreval("")
      Escreval("########################################################")
      Escreval("#                                                      #")
      Escreval("#                 Autor: Quitumba Culyssander                       #")
      Escreval("#                                                      #")
      Escreval("#                     Vers�o Aprendizado               #")
      Escreval("#                                                      #")
      Escreval("########################################################")

      escreval
      escreval("              Tecle Enter")
      leia(paragem)
fimprocedimento

procedimento listaRanking()
var
paragem, i: inteiro
inicio

limpatela
se contadorDeVezesQueJogas = 0 entao
   escreva("SEM RANKING - VAZIO")
senao
     escreval("LISTA DO RANKING")
     para i de 1 ate contadorDeVezesQueJogas faca
          escreva(i, " - ")
          escreva("Nome: ", ranking[i,1])
          escreva(" Acertou: ", ranking[i,2])
          escreva(" Errou: ", ranking[i,3])
          escreval(" Pontua��o: ",    ranking[i,4])
     fimpara
fimse

escreval
escreval("Tecle Enter")
leia(paragem)

limpatela
menuInicial()
fimprocedimento

procedimento gabarito()
var
i, j, ajudador, paragem:inteiro
alinhaCorreta: caracter
inicio

    limpatela
   para i de 1 ate 4 faca
   Escreval("--------------------------------------------------------")
   Escreval("|                         quis                         |")
   Escreval("|                  ", i ,"� Pergunta                        |")
   Escreval("--------------------------------------------------------")
   Escreval(i, " - ", perguntas[i])

       escolha i faca
          caso 1
               ajudador <- 1
          caso 2
               ajudador <- 5
          caso 3
               ajudador <- 9
          caso 4
               ajudador <- 13
       fimescolha

       para j de ajudador ate ajudador+3 faca
           alinhaCorreta <- copia(respostas[j], 1, 1)
           Escreva(respostas[j])
           se alinhaDaRespostaCorreta[i] =  alinhaCorreta entao
              escreval(" - (Correta)")
           senao
              escreval(" - (Incorreta)")
           fimse
       fimpara
    fimpara
       escreval
       escreval("Tecle Enter")
       leia(paragem)
       limpatela
       menuInicial()
fimprocedimento

Var

   perguntas: vetor[1..4] de caracter
   respostas: vetor[1..16] de caracter
   alinhaDaRespostaCorreta: vetor [1..4] de caracter
   ranking: vetor[1..20,1..4] de caracter
   contadorDeVezesQueJogas: inteiro
Inicio
   inicializacaoDasPerguntas()
   inicializacaoDasRespostas()
   menuInicial()

Fimalgoritmo
