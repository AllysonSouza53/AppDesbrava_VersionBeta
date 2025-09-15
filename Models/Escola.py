from Banco import Banco
from Helpers import DadosEndereco

class Escola(object):
    def __init__(self, valores, condicao, rotulos):
        # transforma a string de valores em lista
        self.valores = valores.split(',')
        self.condicao = condicao
        self.rotulos = rotulos

    def set(self):
        self.Codigo = self.valores[0]
        self.Nome = self.valores[1]
        self.Numero = self.valores[2]
        self.Rua = self.valores[3]
        self.Bairro = self.valores[4]
        cidade_nome = self.valores[5]
        self.UF = self.valores[6]
        self.Administracao = self.valores[7]
        self.Etapas = self.valores[8]

        # converte nome da cidade para ID
        self.ID_Cidade = DadosEndereco.get_codigo(cidade_nome, self.UF)

    def get(self):
        return [
            self.Codigo,
            self.Nome,
            self.Numero,
            self.Rua,
            self.Bairro,
            self.ID_Cidade,
            self.UF,
            self.Administracao,
            self.Etapas
        ]

    def Cadastrar(self):
        try:
            Banco.conectar()
            Banco.inserir(
                'ESCOLAS',
                'CODIGO,NOME,NUMERO,RUA,BAIRRO,IDCIDADE,UF,ADMINISTRACAO,ETAPAS',
                self.get()
            )
        except Exception as e:
            print(e)

    def Alterar(self):
        try:
            Banco.conectar()
            Banco.editar(
                'ESCOLAS',
                f"CODIGO='{self.Codigo}',"
                f"NOME='{self.Nome}',"
                f"NUMERO={self.Numero},"
                f"RUA='{self.Rua}',"
                f"BAIRRO='{self.Bairro}',"
                f"IDCIDADE={self.ID_Cidade},"
                f"UF='{self.UF}',"
                f"ADMINISTRACAO='{self.Administracao}',"
                f"ETAPAS='{self.Etapas}'",
                self.condicao
            )
        except Exception as e:
            print(e)

    def Pesquisar(self):
        try:
            Banco.conectar()
            escola = Banco.consultar(self.rotulos, 'ESCOLAS', self.condicao)
            return escola
        except Exception as e:
            print(e)

    def Deletar(self):
        try:
            Banco.conectar()
            Banco.excluir('ESCOLAS', self.condicao)
        except Exception as e:
            print(e)
