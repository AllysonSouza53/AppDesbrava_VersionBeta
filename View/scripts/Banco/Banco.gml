function inserir(tabela,valores){
	caminho  = "C:\\Users\\souza\\PycharmProjects\\AppDesbrava_VersionBeta\\AI\\SET\\memoria.txt";
	texto = tabela+"\n*\n"+valores+"\n*\nI"
	if(file_exists(caminho)){ 
		show_message("Erro na Conexão");
	}else{
		EscreverArquivo(caminho, texto); 
	}
}
