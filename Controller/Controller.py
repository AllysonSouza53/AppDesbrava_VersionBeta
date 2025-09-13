from Models.Aluno import Aluno
from AI.GET import Getter
from Models.Cidade import Cidade


class controller:
    def __init__(self, linha):
        self.tabela = linha[0]
        self.rotulos = linha[1]
        self.valores = linha[2]
        self.condicao = linha[3]
        self.definidor = linha[4]


    def Ordenar(self):
        if self.tabela == 'ALUNOS':
            self.model = Aluno(self.valores, self.condicao,self.rotulos)
        elif self.tabela == 'CIDADES':
            self.model = Cidade(self.valores, self.condicao,self.rotulos)
            print('alunos')
        elif self.tabela == 'CIDADES':
            self.cidade = Cidade(self.valores, self.condicao)
            self.Acao()
        elif self.tabela == 'ESCOLAS':
            print('ESCOLAS')
        elif self.tabela == 'ESTADOS':
            print('ESTADOS')
        elif self.tabela == 'POSTS':
            print('POSTS')
        elif self.tabela == 'PROFISSIONAIS':
            print('PROFISSIONAIS')
        elif self.tabela == 'PROFISSOES':
            print('PROFISSOES')
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
            Getter.construtor(resultado)
        elif self.definidor == 'D':
            self.model.Deletar()
        if self.definidor == 'I':
            print("foi")
        elif self.definidor == 'A':
            print("foi2")
        elif self.definidor == 'C':
            print("foi3")
        elif self.definidor == 'D':
            self.cidade.get()
        else:
            print("não foi")