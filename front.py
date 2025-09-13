from Helpers import ManipulacaoArquivos
import time as t

ManipulacaoArquivos.escrever_arquivo(
    'AI\\SET\\memoria.txt',
    "PROFISSIONAIS\n"
    "CPF,NOME,IDPROFISSAO,DATANASCIMENTO,IDESCOLA,SENHA,BIOGRAFIA,IDFAVORITO,NUMEROCASA,RUA,BAIRRO,IDCIDADE,CEP,UF\n"
    "12345678905,Ana,2,1990-05-20,10,senha123,'Professora de matemática',7,120,Rua das Flores,Jardim,Mineiros do Tietê,14000000,SP\n"
    "NOME = 'Ana'\n"
    "C"
)

t.sleep(5)
