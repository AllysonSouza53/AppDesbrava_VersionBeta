from Banco import Banco
from Helpers import DadosEndereco

class Profissional(object):
    def __init__(self, valores, condicao, rotulos):
        # transforma a string de valores em lista
        self.valores = valores.split(',')
        self.condicao = condicao
        self.rotulos = rotulos

    def set(self):
        self.CPF = self.valores[0]
        self.Nome = self.valores[1]
        self.ID_Profissao = self.valores[2]
        self.DataNascimento = self.valores[3]
        self.ID_Escola = self.valores[4]
        self.Senha = self.valores[5]
        self.Biografia = self.valores[6]
        self.ID_Favorito = self.valores[7]
        self.NumeroCasa = self.valores[8]
        self.Rua = self.valores[9]
        self.Bairro = self.valores[10]
        cidade_nome = self.valores[11]
        self.CEP = self.valores[12]
        self.UF = self.valores[13]
        self.ID_Cidade = DadosEndereco.get_codigo(cidade_nome, self.UF)

    def get(self):
        return [
            self.CPF,
            self.Nome,
            self.ID_Profissao,
            self.DataNascimento,
            self.ID_Escola,
            self.Senha,
            self.Biografia,
            self.ID_Favorito,
            self.NumeroCasa,
            self.Rua,
            self.Bairro,
            self.ID_Cidade,
            self.CEP,
            self.UF
        ]

    def Cadastrar(self):
        try:
            Banco.conectar()
            Banco.inserir(
                'PROFISSIONAIS',
                'CPF,NOME,IDPROFISSAO,DATANASCIMENTO,IDESCOLA,SENHA,BIOGRAFIA,IDFAVORITO,NUMEROCASA,RUA,BAIRRO,IDCIDADE,CEP,UF',
                self.get()
            )
        except Exception as e:
            print(e)

    def Alterar(self):
        try:
            Banco.conectar()
            Banco.editar(
                'PROFISSIONAIS',
                f"CPF='{self.CPF}',"
                f"NOME='{self.Nome}',"
                f"IDPROFISSAO={self.ID_Profissao},"
                f"DATANASCIMENTO='{self.DataNascimento}',"
                f"IDESCOLA={self.ID_Escola},"
                f"SENHA='{self.Senha}',"
                f"BIOGRAFIA='{self.Biografia}',"
                f"IDFAVORITO={self.ID_Favorito},"
                f"NUMEROCASA={self.NumeroCasa},"
                f"RUA='{self.Rua}',"
                f"BAIRRO='{self.Bairro}',"
                f"IDCIDADE={self.ID_Cidade},"
                f"CEP={self.CEP},"
                f"UF='{self.UF}'",
                self.condicao
            )
        except Exception as e:
            print(e)

    def Pesquisar(self):
        try:
            Banco.conectar()
            profissional = Banco.consultar(self.rotulos, 'PROFISSIONAIS', self.condicao)
            linhas = []
            for i in profissional:
                linhas.append(','.join(map(str, i)))
            texto = '\n'.join(linhas)
            print(texto)
            return profissional
        except Exception as e:
            print(e)

    def Deletar(self):
        try:
            Banco.conectar()
            Banco.excluir('PROFISSIONAIS', self.condicao)
        except Exception as e:
            print(e)