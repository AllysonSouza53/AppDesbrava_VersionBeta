from Banco import Banco

class Post(object):
    def __init__(self, valores, condicao, rotulos):
        # transforma a string de valores em lista
        self.valores = valores.split(',')
        self.condicao = condicao
        self.rotulos = rotulos

    def set(self):
        # ID é auto_increment, então não entra aqui
        self.ID_Usuario = self.valores[0]
        self.Arquivo = self.valores[1]
        self.Texto = self.valores[2]
        self.Musica = self.valores[3]

    def get(self):
        return [
            self.ID_Usuario,
            self.Arquivo,
            self.Texto,
            self.Musica
        ]

    def Cadastrar(self):
        try:
            Banco.conectar()
            Banco.inserir(
                'POST',
                'IDUSUARIO,ARQUIVO,TEXTO,MUSICA',
                self.get()
            )
        except Exception as e:
            print(e)

    def Alterar(self):
        try:
            Banco.conectar()
            Banco.editar(
                'POST',
                f"IDUSUARIO={self.ID_Usuario},"
                f"ARQUIVO='{self.Arquivo}',"
                f"TEXTO='{self.Texto}',"
                f"MUSICA='{self.Musica}'",
                self.condicao
            )
        except Exception as e:
            print(e)

    def Pesquisar(self):
        try:
            Banco.conectar()
            post = Banco.consultar(self.rotulos, 'POST', self.condicao)
            return post
        except Exception as e:
            print(e)

    def Deletar(self):
        try:
            Banco.conectar()
            Banco.excluir('POST', self.condicao)
        except Exception as e:
            print(e)
