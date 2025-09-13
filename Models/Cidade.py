from Banco import Banco

class Cidade(object):
    def __init__(self, valores, condicao,rotulos):
        self.valores = valores.split(',')
        self.condicao = condicao
        self.rotulos = rotulos

    def set(self):
        self.Nome = self.valores[0]
        self.IdEstado = self.valores[1]

    def get(self):
        return [self.Nome, self.IdEstado]

    def Cadastrar(self):
        try:
            Banco.conectar()
            Banco.inserir('CIDADES','NOME,ID_ESTADO',[self.Nome,self.IdEstado])
        except Exception as e:
            print(e)

    def Alterar(self):
        try:
            Banco.conectar()
            Banco.editar('CIDADES',f"NOME='{self.Nome}',ID_ESTADO={self.IdEstado}", self.condicao)
        except Exception as e:
            print(e)

    def Pesquisar(self):
        try:
            Banco.conectar()
            return Banco.consultar(self.rotulos,'CIDADES',self.condicao)
        except Exception as e:
            print(e)

    def Deletar(self):
        try:
            Banco.conectar()
            Banco.excluir('CIDADES',self.condicao)
        except Exception as e:
            print(e)







