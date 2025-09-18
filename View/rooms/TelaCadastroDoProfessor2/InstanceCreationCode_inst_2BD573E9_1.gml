clique = function(){
		global.ProfissionaisValores = global.idCTCPF+","+global.idCTNomeProfissional+","+global.idCTProfissao+","+global.idCTDataNascimento+","+CTEscola.texto+","+CTSenha.texto+",0,0,0,0,0,"+CTCidade.texto+","+CTUF.texto;
		//verifica se cpf já cadastrado
		base = consulta("PROFISSIONAIS","CPF",global.ProfissionaisValores,"CPF ="+global.idCTCPF)
		if(base==global.idCTCPF){
			show_message("CPF já cadastrado")
			return;
		}
		inserir("PROFISSIONAIS",global.ProfissionaisValores)
}
