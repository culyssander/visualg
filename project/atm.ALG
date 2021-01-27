Algoritmo "atm"
procedimento menuInicial()
var
inicio
escreval("*********************************")
escreval("        Bem-vindo ao ATM")
escreval("*********************************")
escreval()
escreval("1 - Cadastrar usuario")
escreval("2 - Insirar o cartao (Login)")
escreval("0 - Sair do sistema")
escreval()
escreva("Escolha uma opcao: ")
leia(opcao)
          enquanto opcao <> 0 faca
              se (opcao = 2) entao
                  formularioLogin()
                  resultado <- loginConta(numeroConta, senhaConta)
                  se (resultado) entao
                       menuPrincipal()
                       escreva("Deseja continuar: (1 - Sim) (0 - Nao) ")
                     leia (opcao)
                  senao
                     escreval("Conta Invalida.")
                     escreva("Deseja tentar novamente: (1 - Sim) (0 - Nao) ")
                     leia(opcao)
                  fimse
               senao
                    se (opcao = 1) entao
                        cadastrarUtilizador()
                    senao
                        escreval("Opcao invalida.")
                    fimse
               fimse
          fimenquanto
fimprocedimento
procedimento menuPrincipal()
var
inicio
limpatela
escreval("*********************************")
escreval("           Menu principal")
escreval("*********************************")
escreval("1 - Levantamento")
escreval("2 - Consulta")
escreval("3 - Recargas")
escreval("4 - Alterar a senha")
escreval("0 - Sair do sistema")
escreval()
escreva("Escolha uma opcao: ")
leia(opcao)
enquanto (opcao <> 0) faca
   escolha opcao
caso 1
     menuLevantamento()
caso 2
     menuConsulta()
caso 3
     menuRecarga()
caso 4
     alterarSenha
outrocaso
    escreval("Opcao invalida")
    continuarNoSistema()
fimescolha
fimenquanto
fimprocedimento
procedimento menuLevantamento()
var
opcaoTemp:inteiro
valor: real
inicio
limpatela
escreval("*********************************")
escreval("           Menu levantamento")
escreval("*********************************")
escreval("1 - 2000")
escreval("2 - 5000")
escreval("3 - 10000")
escreval("4 - 20000")
escreval("5 - Defenir o valor")
escreval("0 - Voltar")
escreval()
escreva("Escolha uma opcao: ")
leia(opcaoTemp)
escolha opcaoTemp
     caso 1
          valor <- 2000
          validarValorNaContaAntesDeRemover(valor)
     caso 2
          valor <- 5000
          validarValorNaContaAntesDeRemover(valor)
     caso 3
          valor <- 10000
          validarValorNaContaAntesDeRemover(valor)
     caso 4
          valor <- 20000
          validarValorNaContaAntesDeRemover(valor)
     caso 5
          escreva("Digite o valor desejado: ")
          leia(valor)
          validarValorNaContaAntesDeRemover(valor)
fimescolha
fimprocedimento
procedimento continuarNoSistema()
var
opcaoTemp:inteiro
inicio
escreval()
   escreva("Precione a tecla 1 para voltar: ")
   leia(opcaoTemp)
   se (opcaoTemp = 1) entao
      menuPrincipal()
  fimse
fimprocedimento
procedimento validarValorNaContaAntesDeRemover(valorDesejado: real):logico
inicio
      se (saldo[saberPosicaoActual] >= valorDesejado) entao
           saldo[saberPosicaoActual]  <- saldo[saberPosicaoActual] - valorDesejado
           escreva("Operacao realizada com sucesso!")
             continuarNoSistema()
           senao
           escreva("Saldo inferior ao desejado...")
           continuarNoSistema()
      fimse
fimprocedimento
procedimento menuConsulta()
var
opcaoTemp: inteiro
inicio
limpatela
escreval("*********************************")
escreval("           Menu consulta")
escreval("*********************************")
escreval("1 - Consultar o valor")
escreval("2 - Consultar o IBAN")
escreval("3 - Historico de movimento")
escreval("0 - Voltar")
escreval()
escreva("Escolha uma opcao: ")
leia(opcaoTemp)
escolha opcaoTemp
caso 1
      escreval("Saldo: ", saldo[saberPosicaoActual])
      continuarNoSistema()
caso 2
      escreva()
      escreval("Titular: ", titular[saberPosicaoActual])
      escreval("IBAN: ", iban[saberPosicaoActual])
      continuarNoSistema()
caso 3
      escreva("Servico indisponivel...")
      continuarNoSistema()
caso 0
      menuPrincipal()
fimprocedimento
procedimento menuRecarga()
var
opcaoTemp: inteiro
inicio
limpatela
escreval("*********************************")
escreval("           Menu Recarga")
escreval("*********************************")
escreval("1 - Unitel")
escreval("2 - Movicel")
escreval("3 - Net one")
escreval("4 - DStv")
escreval("5 - Tv cabo")
escreval("0 - Voltar")
escreval()
escreva("Escolha uma opcao: ")
leia(opcaoTemp)
escolha opcaoTemp faca
  caso 1
       menuRecargaUnitel()
  caso 2,3,4,5
       escreval("Servico indisponivel...")
       continuarNoSistema()
  caso 0
      menuPrincipal()
fimescolha
fimprocedimento
procedimento menuRecargaUnitel()
var
opcaoTemp: inteiro
recarga: inteiro
inicio
limpatela
escreval("*********************************")
escreval("        Menu Recarga Unitel")
escreval("*********************************")
escreval("1 - 1000")
escreval("2 - 5000")
escreval("3 - 10000")
escreval("4 - 15000")
escreval("5 - 20000")
escreval("0 - Voltar")
escreval()
escreva("Escolha uma opcao: ")
leia(opcaoTemp)
escolha opcaoTemp faca
    caso 1
         recarga <- 1000
         validarValorNaContaAntesDeRemover(recarga)
    caso 2
          recarga <- 5000
         validarValorNaContaAntesDeRemover(recarga)
    caso 3
         recarga <- 10000
         validarValorNaContaAntesDeRemover(recarga)
    caso 4
          recarga <- 15000
         validarValorNaContaAntesDeRemover(recarga)
    caso 5
         recarga <- 20000
         validarValorNaContaAntesDeRemover(recarga)
    caso 0
         menuRecarga()
fimescolha
fimprocedimento
procedimento cadastrarUtilizador()
inicio
limpatela()
escreval("*********************************")
escreval("    Cadastrar novo utilizador")
escreval("*********************************")
se (indiceDoCadastro <> 5) entao
escreva("Digite o numero da conta: ")
leia(id[indiceDoCadastro])
escreva("Digite o titula da conta: ")
leia(titular[indiceDoCadastro])
escreva("Digite o saldo da conta: ")
leia(saldo[indiceDoCadastro])
escreva("Digite o iban da conta: ")
leia(iban[indiceDoCadastro])
escreva("Digite a senha da conta: ")
leia(senha[indiceDoCadastro])
indiceDoCadastro <- indiceDoCadastro + 1
menuInicial()
senao
     escreval("Servico indisponivel....")
     menuInicial()
fimse
fimprocedimento
procedimento inicializacaoDosDados()
inicio
        indiceDoCadastro <-1
        id[indiceDoCadastro] <- 1111
        titular[indiceDoCadastro] <- "Quitumba"
        iban[indiceDoCadastro] <- "A00001111"
        saldo[indiceDoCadastro] <- 4000
        senha[indiceDoCadastro] <- 1111
        indiceDoCadastro <- indiceDoCadastro + 1
        id[indiceDoCadastro] <- 2222
        titular[indiceDoCadastro] <- "Rubem"
        iban[indiceDoCadastro] <- "A00002222"
        saldo[indiceDoCadastro] <- 7000
        senha[indiceDoCadastro] <- 2222
        indiceDoCadastro <- indiceDoCadastro + 1
        saberPosicaoActual <- 1
fimprocedimento
procedimento formularioLogin()
inicio
limpatela
escreval("*********************************")
escreval("             Login ")
escreval("*********************************")
escreva("Digita o numero da conta: ")
leia(numeroConta)
escreva("Digita a senha da conta: ")
leia(senhaConta)
fimprocedimento
funcao loginConta(idDigitado, senhaDigitado: inteiro):logico
var
contador: inteiro
resutaldo: logico
inicio
      resultado <- falso
      para contador <- 1 ate 5 faca
            se (id[contador] = idDigitado) entao
            escreval(senhaDigitado)
                 se(senha[contador] = senhaDigitado) entao
                      saberPosicaoActual <- contador
                      resultado <- verdadeiro
                 fimse
            fimse
      fimpara
      retorne resultado
fimfuncao
procedimento alterarSenha()
var
novaSenha: inteiro
confirmarNovaSenha: inteiro
opcaoTemp: inteiro
inicio
limpatela
escreval("*********************************")
escreval("             Alterar senha ")
escreval("*********************************")
escreva("Digite a nova senha: ")
leia(novaSenha)
escreva("Digite a confirmacao da nova senha: ")
leia(confirmarNovaSenha)
se(novaSenha = confirmarNovaSenha) entao
     senha[saberPosicaoActual] <- novaSenha
     menuPrincipal
senao
     escreval("Nao foi possivel alterar a senha. Senhas diferentes")
     escreva("Deseja tentar novamente: 1 - Sim 0 - Nao ")
     leia(opcaoTemp)
     se (opcaoTemp = 1) entao
        alterarSenha
     senao
          menuPrincipal
fimse
fimprocedimento
funcao soma(a, b:inteiro):inteiro
var
inicio
      retorne (a + b)
fimfuncao
Var
   opcao: inteiro
   id: vetor[1..5] de inteiro
   titular: vetor[1..5] de caracter
   iban: vetor[1..5] de caracter
   saldo: vetor[1..5] de real
   senha: vetor[1..5] de inteiro
   numeroConta: inteiro
   senhaConta: inteiro
   resultado: logico
   saberPosicaoActual: inteiro
   indiceDoCadastro: inteiro
Inicio
        inicializacaoDosDados()
        menuInicial()
Fimalgoritmo
