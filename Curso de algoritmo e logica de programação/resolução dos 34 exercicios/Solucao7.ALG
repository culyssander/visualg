Algoritmo "Solucao7"
//7) Construa um programa em Java que recebe dois numero e exibe o maior dentre os dois, caso eles sejam iguais exibe uma mensagem correspondente.

Var
 numero1, numero2: inteiro

Inicio
    escreva("Digite o primeiro numero: ")
    leia(numero1)

    escreva("Digite o segundo numero: ")
    leia(numero2)

    se numero1 > numero2 entao
       escreva(numero1)
    senao
         se numero1 < numero2 entao
            escreva(numero2)
         senao
            escreva("Numeros iguais")
         fimse
    fimse

Fimalgoritmo