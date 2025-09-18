clique = function()
{
	var nome = CTNome.texto;
	var ra = CTRA.texto;
	var AlunosValores = "0,0,0,0,0,0,Jaú,0,0,0,0,0,SP";
	
	
	base = string_split(consulta("ALUNOS","RE,NOME",AlunosValores,"RE ="+ra),",")
	if(base[0]!=ra){
		show_message("RA não cadastrado")
		return;
	}else if(base[1]!= nome){
		show_message("Nome incorreto")
		return;
	}else{
		room_goto(TelaJogosAluno)
	}
}