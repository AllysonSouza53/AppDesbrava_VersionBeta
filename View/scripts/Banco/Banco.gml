function inserir(tabela,valores){
	caminho  = "C:\\Users\\souza\\PycharmProjects\\AppDesbrava_VersionBeta\\AI\\SET\\memoria.txt";
	texto = tabela+"\n*\n"+valores+"\n*\nI";
	if(file_exists(caminho)){ 
		show_message("Erro na Conexão");
	}else{
		EscreverArquivo(caminho, texto); 
	}
}


function consulta(tabela,rotulos,valores,condicao){
	caminho  = "C:\\Users\\souza\\PycharmProjects\\AppDesbrava_VersionBeta\\AI\\SET\\memoria.txt";
	CaminhoBuscar = "C:\\Users\\souza\\PycharmProjects\\AppDesbrava_VersionBeta\\AI\\GET\\memoria.txt";
	texto = tabela+"\n"+rotulos+"\n"+valores+"\n"+condicao+"\nC";
	if(file_exists(caminho)){ 
		show_message("Erro na Conexão");
	}else{
		EscreverArquivo(caminho, texto); 
		if(monitorador()){
			resultado = LerArquivo(CaminhoBuscar);
			file_delete(CaminhoBuscar)
			return resultado
		}
	}
}