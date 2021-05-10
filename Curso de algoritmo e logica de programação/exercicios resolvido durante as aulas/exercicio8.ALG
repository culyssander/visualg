Algoritmo "Media final escolar"

Var
    nota1, nota2: real
    media: real
    nome: caracter
Inicio

    escreva("Digite o seu nome: ")
    leia(nome)

    escreva("Digite a 1º nota: ")
    leia(nota1)
    
    escreva("Digite a 2º nota: ")
    leia(nota2)
    
    media <- (nota1 + nota2) / 2
    
    se media >= 10 entao
       escreva("O(A) ", nome, " esta APROVADO com media: ", media)
    senao
       escreva("O(A) ", nome, " esta REPROVADO com media: ", media)
    fimse

Fimalgoritmo