Algoritmo "Solucao2"
//2) Fa�a um programa em visualg que recebe dois n�meros e ao final mostre:
//a) A soma.
//b) A subtrac��o.
//c) A multiplica��o.
//d) E a divis�o de dois numeros.
Var
 numero1, numero2, soma, subtracao, multi, divisao: real

Inicio
    escreva("Digite o primeiro numero: ")
    leia(numero1)
    
    escreva("Digite o segundo numero: ")
    leia(numero2)
    
    soma <- numero1 + numero2
    subtracao <- numero1 - numero2
    multi <- numero1 * numero2
    divisao <- numero1 / numero2
    escreval("--------- Resultado ---------")
    escreval(numero1, " + ", numero2, " = ", soma)
    escreval(numero1, " - ", numero2, " = ", subtracao)
    escreval(numero1, " * ", numero2, " = ", multi)
    escreval(numero1, " / ", numero2, " = ", divisao)

Fimalgoritmo