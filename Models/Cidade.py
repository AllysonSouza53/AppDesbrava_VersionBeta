class Cidade(object):
    def __init__(self, valores, condicao):
        self.valores = valores.split(',')
        self.condicao = condicao
        self.get()

    def get(self):
        for valor in self.valores:
            print(valor)


