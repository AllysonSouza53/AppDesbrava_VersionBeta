from Helpers import ManipulacaoArquivos

def construtor(consulta):
    linhas = []
    for i in consulta:
        linhas.append(','.join(map(str, i)))
    texto = '\n'.join(linhas)
    ManipulacaoArquivos.escrever_arquivo('AI\\GET\\memoria.txt', texto)


