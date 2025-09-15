from Banco import Banco
from AI.GET import Getter

class Backup(object):
    def __init__(self):
        print('Backup')

    def set(self):
        self.alunos = self.Pesquisar("RE,NOME,DATANASCIMENTO,NUMEROCASA,RUA,BAIRRO,IDCIDADE,SERIE,GRAU,IDESCOLA,IDPROFISSIONAL,UF","ALUNOS")
        Getter.construtor(self.alunos, 'AI\\Backup\\Alunos.txt')
        self.escola = self.Pesquisar("CODIGO,NOME,NUMERO,RUA,BAIRRO,IDCIDADE,UF,ADMINISTRACAO,ETAPAS","ESCOLAS")
        Getter.construtor(self.escola, 'AI\\Backup\\Escola.txt')
        self.post = self.Pesquisar("ID,IDUSUARIO,ARQUIVO,TEXTO,MUSICA","POST")
        Getter.construtor(self.post, 'AI\\Backup\\Post.txt')
        self.profissoes = self.Pesquisar("ID,NOME","PROFISSOES")
        Getter.construtor(self.profissoes, 'AI\\Backup\\Profissoes.txt')
        self.profissionais = self.Pesquisar("CPF,NOME,IDPROFISSAO,DATANASCIMENTO,IDESCOLA,SENHA,BIOGRAFIA,IDFAVORITO,NUMEROCASA,RUA,BAIRRO,IDCIDADE,UF","PROFISSIONAIS")
        Getter.construtor(self.profissionais, 'AI\\Backup\\Profissionais.txt')
        print([self.alunos, self.escola, self.post, self.profissoes, self.profissionais])

    def Pesquisar(self,rotulos,tabela):
        try:
            Banco.conectar()
            profissional = Banco.consultar(rotulos, tabela, 1)
            return profissional
        except Exception as e:
            print(e)