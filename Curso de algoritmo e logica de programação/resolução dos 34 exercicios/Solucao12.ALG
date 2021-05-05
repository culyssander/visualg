Algoritmo "Solucao12"
// 12) Construa um programa em visualg que determine o consumo médio de um automóvel sendo fornecida a distancia total percorrida pelo automovel e o total de combustivel gasto.

Var

consumoMedio, distanciaTotal, combustivelTotal: real

Inicio

escreva("Digite a distancia total (S): ")
leia(distanciaTotal)

escreva("Digite o total de combustivel (v): ")
leia(combustivelTotal)

consumoMedio <-  distanciaTotal / combustivelTotal

escreva("(CM = s/v) Consumo medio: ", consumoMedio, " km/l" )

Fimalgoritmo