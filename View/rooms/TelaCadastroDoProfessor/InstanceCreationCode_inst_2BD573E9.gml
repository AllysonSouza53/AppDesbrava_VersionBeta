clique = function()
{
    var caminho  = "AI\\SET\\memoria.txt";
    var usuario  = CTUsuario.texto;
	var cpf = CTCPF.texto;
    var senha    = CTSenha.texto;
    var confirma = CTConfirmacao.texto;
    var trabalho = CTTrabalho.texto;

	
    var registro = usuario + "," + cpf + "," + senha + "," + trabalho;

    var existeUsuario = false;

    if (senha != confirma) {
        show_message("Confirmação de Senha diferente da Senha!");
        return;
    }

    if (file_exists(caminho)) {
        var textoArquivo = LerArquivo(caminho);          
        var linhas = string_split(textoArquivo, ";");    

        for (var i = 0; i < array_length(linhas); i++) {
            var linha = string_trim(linhas[i]);
            if (linha != "") {
                var campos = string_split(linha, ",");
                if (array_length(campos) > 0) {
                    if (campos[0] == usuario) {       
                        existeUsuario = true;
                        break;
                    }
                }
            }
        }
    }

    if (existeUsuario == true) {
        show_message("Usuário já existente");
        return;
    }
	
	if (string_length(cpf) > 0)
	{
		cpf = string_replace_all(cpf, ".", "");
		cpf = string_replace_all(cpf, "-", "");
		var tamanho = string_length(cpf);
		var caracteres = array_create(tamanho);
		
		for (var i = 1; i <= tamanho; i++) {
			caracteres[i - 1] = real(string_char_at(cpf, i));
		}

		// primeiro dígito
		var soma1 = (caracteres[0]*10)+(caracteres[1]*9)+(caracteres[2]*8)+(caracteres[3]*7)+(caracteres[4]*6)+(caracteres[5]*5)+(caracteres[6]*4)+(caracteres[7]*3)+(caracteres[8]*2);
		var primeirodigito = 11 - (soma1 % 11);
		if (primeirodigito >= 10) primeirodigito = 0;

		// segundo dígito
		var soma2 = (caracteres[0]*11)+(caracteres[1]*10)+(caracteres[2]*9)+(caracteres[3]*8)+(caracteres[4]*7)+(caracteres[5]*6)+(caracteres[6]*5)+(caracteres[7]*4)+(caracteres[8]*3)+(caracteres[9]*2);
		var segundodigito = 11 - (soma2 % 11);
		if (segundodigito >= 10) segundodigito = 0;

		if (primeirodigito != caracteres[9] || segundodigito != caracteres[10]) {
			show_message("CPF inválido!");
			return;
		}
	}
    if (file_exists(caminho)) {
        AdicionarAoArquivo(caminho, registro + ";");     // acrescenta com ';' no fim
    } else {
        EscreverArquivo(caminho, registro + ";");        // cria novo
    }
	/*global.banco = new Banco()
	global.banco.inserir("ALUNOS","RE,NOME,DATANASCIMENTO,NUMEROCASA,RUA,BAIRRO,IDCIDADE,SERIE,GRAU,IDESCOLA,IDPROFISSIONAL,UF","12345,João,2008-05-10,100,Rua A,Centro,3550308,1,3,1,1,SP")
	*/
    room_goto(TelaPerfilProfessor);
}
