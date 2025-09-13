from Helpers import ManipulacaoArquivos
from Controller.Controller import controller
i =0
linha =[]
while i != 5:
    linha = ManipulacaoArquivos.ler_arquivo('AI\\SET\\memoria.txt').splitlines()
    i+=1
controle = controller(linha)
controle.Ordenar()
controle.Acao()