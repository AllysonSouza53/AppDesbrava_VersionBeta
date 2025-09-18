clique = function()
{
	var cpf = CTCPFLogin.texto;
	var senha = CTSenhaLogin.texto;
	ProfissionaisValores = "0,0,0,0,0,0,0,0,0,0,0,Jaú,SP";
	
	if(ValidandoCPF(cpf)==0){
		show_message("CPF inválido!");
		return;
	}else{
		cpf = ValidandoCPF(cpf)
	}
	
	base = string_split(consulta("PROFISSIONAIS","CPF,SENHA",ProfissionaisValores,"CPF ="+cpf),",")
	if(base[0]!=cpf){
		show_message("CPF não cadastrado")
		return;
	}else if(base[1]!= senha){
		show_message("Senha incorreta")
		return;
	}else{
		room_goto(TelaPerfilProfessor)
	}
}