Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/08/2021
Var
c1, c2, c3, nulos, brancos, total: inteiro

Procedimento imprime_cabecalho()
Inicio
      limpatela
      Escreval("::: Bem vindo ao sistema Processo Eleitoral V 1.0 :::")
      Escreval(" ")
FimProcedimento

Funcao recebe_votos(categoria:caracter) : inteiro
Var
   aux : caracter
   valor : inteiro
Inicio
   imprime_cabecalho()
   Escreval("Por favor, digite o número de votos relativo a ", categoria, ": ")
   leia(valor)
   Escreval(categoria, " teve ", valor, " votos, confirma? Digite S para confirmar: ")
   leia(aux)
   se (aux="S") ou (aux="s") entao
      retorne valor
   senao
      retorne recebe_votos(categoria)
   fimse
FimFuncao

Procedimento imprime_resultados(c1, c2, c3, nulos, brancos, total:inteiro)
Inicio
   limpatela
   Escreval("Ótimo, muito obrigada. Aqui estão os resultados das eleições:")
   Escreval("Candidato 1: ", (c1/total)*100, "%")
   Escreval("Candidato 2: ", (c2/total)*100, "%")
   Escreval("Candidato 3: ", (c3/total)*100, "%")
   Escreval("Votos nulos: ", (nulos/total)*100, "%")
   Escreval("Votos em branco: ", (brancos/total)*100, "%")
FimProcedimento

Inicio
imprime_cabecalho

c1 <- recebe_votos("Candidato 1")
c2 <- recebe_votos("Candidato 2")
c3 <- recebe_votos("Candidato 3")
nulos <- recebe_votos("Votos nulos")
brancos <- recebe_votos("Votos em branco")

imprime_cabecalho()
total <- c1+c2+c3+nulos+brancos
imprime_resultados(c1, c2, c3, nulos, brancos, total)

Fimalgoritmo