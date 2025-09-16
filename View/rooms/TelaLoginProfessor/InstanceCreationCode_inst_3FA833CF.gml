clique = function()
{
	var caminho  = "X:/TCC/AppDesbrava-main/DesbravaApp/BancoInterno/Profissionais.txt";
	var cpf = CTCPFLogin.texto;
	var senha = CTSenhaLogin.texto;
	var existecpf = false;
	var existesenha = false;
	
	if (file_exists(caminho)) {
        var textoArquivo = LerArquivo(caminho);          
        var linhas = string_split(textoArquivo, ";");   
		

        for (var i = 0; i < array_length(linhas); i++) {
            var linha = string_trim(linhas[i]);
            if (linha != "") {
                var campos = string_split(linha, ",");
                if (array_length(campos) > 0) {
                    if (campos[1] == cpf) {       
                        existecpf = true;
                        break;
                    }
                }
            }
        }
		
		for (var i = 0; i < array_length(linhas); i++) {
            var linha = string_trim(linhas[i]);
            if (linha != "") {
                var campos = string_split(linha, ",");
                if (array_length(campos) > 0) {
                    if (campos[2] == senha) {       
                        existesenha = true;
                        break;
                    }
                }
            }
        }
		
		if(!existecpf)
		{
			show_message("CPF não encontrado, cadastra-se!")
			return;
		}
		
		if(!existesenha)
		{
			show_message("Senha Incorreta")
			return;
		}
		
    }else{
		show_message("EROOR. Banco não encontrado! Cadastre alguem para recria-lo")
	}
	room_goto(TelaPerfilProfessor)
}