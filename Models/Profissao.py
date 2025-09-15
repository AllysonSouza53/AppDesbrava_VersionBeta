from Banco import Banco

class Profissao(object):
    def __init__(self, valores, condicao, rotulos):
        # valores: string separada por vírgula
        self.valores = valores.split(',')
        self.condicao = condicao
        self.rotulos = rotulos

    def set(self):
        # Só tem NOME, pois ID é auto_increment
        self.Nome = self.valores[0]

    def get(self):
        return [
            self.Nome
        ]

    def Cadastrar(self):
        try:
            Banco.conectar()
            Banco.inserir(
                'PROFISSOES',
                'NOME',
                self.get()
            )
        except Exception as e:
            print(e)

    def Alterar(self):
        try:
            Banco.conectar()
            Banco.editar(
                'PROFISSOES',
                f"NOME='{self.Nome}'",
                self.condicao
            )
        except Exception as e:
            print(e)

    def Pesquisar(self):
        try:
            Banco.conectar()
            profissoes = Banco.consultar(self.rotulos, 'PROFISSOES', self.condicao)
            return profissoes
        except Exception as e:
            print(e)

    def Deletar(self):
        try:
            Banco.conectar()
            Banco.excluir('PROFISSOES', self.condicao)
        except Exception as e:
            print(e)
