function DataGrid(_basededados, _posicao, _rotulos) constructor {
    Caminho = _basededados;
	Posicao = _posicao;
	Rotulos = string_split(_rotulos,",");
	Construtor = function()
	{
		Dados = PFC();
		
	}
	PFC = function()
	{
		if(file_exists(Caminho))
		{
			var textoArquivo = LerArquivo(Caminho);          
			var linhas = string_split(textoArquivo, ";"); 
			return linhas;
		}
	}
	
	DefinirRotulos = function(rotulo)
	{
		
	}
}
