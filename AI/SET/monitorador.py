from Helpers import ManipulacaoDiretorios, ManipulacaoArquivos
import subprocess as sb
import time as t

def monitorar(verificar,pastavazia):
    while verificar.poll() is None:
        pastaatual = ManipulacaoDiretorios.listar_arquivos('AI\\SET')
        if pastavazia != pastaatual:
            p1 = sb.Popen(['python', 'Inicialize.py'])
            t.sleep(0.5)
            ManipulacaoArquivos.deletar_arquivo('AI\\SET\\memoria.txt')
        else:
            t.sleep(0.01)
            continue


