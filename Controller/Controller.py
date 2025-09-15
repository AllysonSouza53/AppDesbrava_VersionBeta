from AI.GET import Getter
from Models.Aluno import Aluno
from Models.Post import Post
from Models.Profissional import Profissional
from Models.Escola import Escola
from Models.Profissao import Profissao
from Models.Bakup import Backup

class controller:
    def __init__(self, linha):
        self.tabela = linha[0]
        self.rotulos = linha[1]
        self.valores = linha[2]
        self.condicao = linha[3]
        self.definidor = linha[4]
        self.caminho = 'AI\\GET\\memoria.txt'


    def Ordenar(self):
        if self.tabela == 'ALUNOS':
            self.model = Aluno(self.valores, self.condicao,self.rotulos)
        elif self.tabela == 'ESCOLAS':
            self.model = Escola(self.valores, self.condicao,self.rotulos)
        elif self.tabela == 'BACKUP':
            self.model = Backup()
        elif self.tabela == 'POSTS':
            self.model = Post(self.valores, self.condicao,self.rotulos)
        elif self.tabela == 'PROFISSIONAIS':
            self.model = Profissional(self.valores, self.condicao,self.rotulos)
        elif self.tabela == 'PROFISSOES':
            self.model = Profissao(self.valores, self.condicao,self.rotulos)
        else:
            print('nenhum')

    def Acao(self):
        self.model.set()
        if self.definidor == 'I':
            self.model.Cadastrar()
        elif self.definidor == 'A':
            self.model.Alterar()
        elif self.definidor == 'C':
            resultado = self.model.Pesquisar()
            Getter.construtor(resultado, self.caminho)
        elif self.definidor == 'D':
            self.model.Deletar()
        elif self.definidor == '*':
            print('Backup...')
        else:
            print("não foi")