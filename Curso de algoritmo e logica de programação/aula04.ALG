Algoritmo "Estrutura de decisao"

Var
   idade: inteiro

Inicio

escreva("Digite a tua idade: ")
leia(idade)

// Composta
se idade >= 18 entao
   escreva("Podes entrar...")
   
senao
   se (idade >= 15) e (idade <=17) entao
        escreva("Nao Podes entrar mas ganhaste um premio")
   senao
        escreva("Nao podes entrar")

   fimse

fimse


Fimalgoritmo