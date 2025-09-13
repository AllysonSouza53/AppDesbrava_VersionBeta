from Banco import Banco

class Aluno(object):
    def __init__(self, valores, condicao,rotulos):
        self.valores = valores.split(',')
        self.condicao = condicao
        self.rotulos = rotulos

    def set(self):
        self.Registro = self.valores[0]
        self.Nome = self.valores[1]
        self.DataNascimento = self.valores[2]
        self.NumeroCasa = self.valores[3]
        self.Rua = self.valores[4]
        self.Bairro = self.valores[5]
        self.ID_Cidade = self.valores[6]
        self.CEP = self.valores[7]
        self.Serie = self.valores[8]
        self.Grau = self.valores[9]
        self.ID_Escola = self.valores[10]
        self.ID_Profissional = self.valores[11]

    def get(self):
        return [self.Registro,
                self.Nome,
                self.DataNascimento,
                self.NumeroCasa,
                self.Rua,
                self.Bairro,
                self.ID_Cidade,
                self.CEP,
                self.Serie,
                self.Grau,
                self.ID_Escola,
                self.ID_Profissional]

    def Cadastrar(self):
        try:
            Banco.conectar()
            Banco.inserir('ALUNOS','RE,NOME,DATANASCIMENTO,NUMEROCASA,RUA,BAIRRO,IDCIDADE,CEP,SERIE,GRAU,IDESCOLA,IDPROFISSIONAL',[
                self.Registro,
                self.Nome,
                self.DataNascimento,
                self.NumeroCasa,
                self.Rua,
                self.Bairro,
                self.ID_Cidade,
                self.CEP,
                self.Serie,
                self.Grau,
                self.ID_Escola,
                self.ID_Profissional])
        except Exception as e:
            print(e)

    def Alterar(self):
        try:
            Banco.conectar()
            Banco.editar('ALUNOS',f"RE={self.Registro},"
                                   f"NOME='{self.Nome}',"
                                   f"DATANASCIMENTO='{self.DataNascimento}',"
                                   f"NUMEROCASA={self.NumeroCasa},"
                                   f"RUA='{self.Rua}',"
                                   f"BAIRRO='{self.Bairro}',"
                                   f"IDCIDADE={self.ID_Cidade},"
                                   f"CEP={self.CEP}"
                                   f",SERIE={self.Serie}"
                                   f",GRAU={self.Grau}"
                                   f",IDESCOLA={self.ID_Escola}"
                                   f",IDPROFISSIONAL={self.ID_Profissional}"
                         , self.condicao)
        except Exception as e:
            print(e)

    def Pesquisar(self):
        try:
            Banco.conectar()
            return Banco.consultar(self.rotulos,'ALUNOS',self.condicao)
        except Exception as e:
            print(e)

    def Deletar(self):
        try:
            Banco.conectar()
            Banco.excluir('ALUNOS',self.condicao)
        except Exception as e:
            print(e)