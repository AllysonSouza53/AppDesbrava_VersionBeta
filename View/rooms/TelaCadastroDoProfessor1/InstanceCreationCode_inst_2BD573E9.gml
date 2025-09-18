clique = function()
{
	global.idCTCPF = CTCPF.texto;
	global.idCTNomeProfissional = CTNomeProfissional.texto;
	global.idCTProfissao = CTProfissao.texto;
	global.idCTDataNascimento = CTDataNascimento.texto;
	
	if(ValidandoCPF(global.idCTCPF)==0){
		show_message("CPF inválido!");
		return;
	}else{
		global.idCTCPF = ValidandoCPF(global.idCTCPF)
	}
	
	room_goto(TelaCadastroDoProfessor2)
}
