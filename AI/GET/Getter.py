from Helpers import ManipulacaoArquivos

def construtor(consulta,caminho):
    linhas = []
    for i in consulta:
        linhas.append(','.join(map(str, i)))
    texto = '\n'.join(linhas)
    ManipulacaoArquivos.escrever_arquivo(caminho, texto)
    #'AI\\GET\\memoria.txt'


