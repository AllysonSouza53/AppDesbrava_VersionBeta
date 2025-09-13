import subprocess as sb
from Helpers import ManipulacaoDiretorios as MD
from AI.SET import monitorador as m


pasta_vazia = MD.listar_arquivos('AI\\SET')

p1 = sb.Popen(['python', 'front.py'])
m.monitorar(p1, pasta_vazia)

