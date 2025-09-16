function Banco()constructor{
	
	caminho  = "C:\Users\souza\PycharmProjects\AppDesbrava_VersionBeta\AI\SET\memoria.txt";
	
	inserir = function(tabela,colunas,valores){
		texto = tabela+"\n"+colunas+"\n"+valores+"\n*\nI"
		if(file_exists(caminho)){
			show_message("Error na Conexão")
		}else{
			EscreverArquivo(caminho,texto)
		}
	}
}