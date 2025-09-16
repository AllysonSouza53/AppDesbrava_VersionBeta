
function Consulta(texto)
{
	Tabela = LerLinha(texto,0,".");
	Rotulos = LerLinha(texto,1,".");
	Valores = LerLinha(texto,2,".");
	Definidor = LerLinha(texto,3,".");
	Condicao = LerLinha(texto,4,".")
	return Tabela+Rotulos+Valores+Definidor+Condicao;
}
function LerLinha(texto, numLinha, identificador)
{
    var lista = string_split(texto, identificador);
    return lista[numLinha];
}


function Espere(TempoMs)
{
	verificador = false;
	TempoInicial = current_time;
	while(!verificador)
	{
		if (current_time -  TempoInicial>= TempoMs)
		{
			verificador = true;
			return true; 
		}
		else
		{
			verificador = false;
		}
	}
}

function TamanhoTexto(Quantidade)
{
	Tamanho = Quantidade * 8.8095238095238095238095238095238;
	return Tamanho;
}