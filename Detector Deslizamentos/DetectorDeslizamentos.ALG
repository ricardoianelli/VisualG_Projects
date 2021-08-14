Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/08/2021
Var
consecutivos, deslizamento, leituras_realizadas, leitura_atual, i : inteiro
leituras : vetor [0..100] de inteiro

Procedimento imprime_cabecalho()
Inicio
      limpatela
      Escreval("::: Sistema Detector de Deslizamentos V 1.0 :::")
      Escreval(" ")
FimProcedimento

Funcao realizar_leitura() : inteiro
Var
leitura : caracter
Inicio
   imprime_cabecalho()
   Escreval("Insira a leitura: (apenas 0 ou 1) ou digite 2 para sair")
   leia(leitura)
   se (leitura="0") ou (leitura="1") ou (leitura="2") entao
        retorne Caracpnum(leitura)
   senao
       Escreval("Entrada invalida. Aperte qualquer tecla para re-inserir!")
       leia(leitura)
       retorne realizar_leitura()
   fimse
FimFuncao

Funcao checar_deslizamento() : inteiro
Inicio
   imprime_cabecalho()
   se (leituras[leituras_realizadas] = 1) entao
      consecutivos <- consecutivos + 1
   fimse
   se consecutivos >= 3 entao
      retorne 1
   senao
      retorne 0
      Escreval("Leitura realizada com sucesso.")
   fimse
FimFuncao

Procedimento imprime_resultados()
Inicio
   imprime_cabecalho()
   se (deslizamento > 0) entao
      Escreval("ALERTA! DESLIZAMENTO DE TERRA!")
      Escreval("Aqui estao todas as leituras feitas:")
      para i de 0 ate leituras_realizadas faca
           Escreva(leituras[i], " ")
      fimpara
   senao
      Escreval("O programa se encerrou sem fazer leitura alguma.")
   fimse

FimProcedimento

Inicio
imprime_cabecalho
deslizamento <- 0

enquanto deslizamento = 0 faca
    leitura_atual <- realizar_leitura()
    se leitura_atual = 2 entao
        interrompa
    fimse
    leituras[leituras_realizadas] <- leitura_atual
    deslizamento <- checar_deslizamento()
    leituras_realizadas <- leituras_realizadas + 1
fimenquanto

imprime_resultados()

Fimalgoritmo