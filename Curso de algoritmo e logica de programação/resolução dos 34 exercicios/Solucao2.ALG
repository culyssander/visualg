Algoritmo "Solucao2"
//2) Faça um programa em visualg que recebe dois números e ao final mostre:
//a) A soma.
//b) A subtracção.
//c) A multiplicação.
//d) E a divisão de dois numeros.
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