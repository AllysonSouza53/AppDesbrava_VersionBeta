
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

function ValidandoCPF(CPF){
	if (string_length(CPF) > 0)
	{
		CPF = string_replace_all(CPF, ".", "");
		CPF = string_replace_all(CPF, "-", "");
		var tamanho = string_length(CPF);
		var caracteres = array_create(tamanho);
		
		//CPF Valido?
		for (var i = 1; i <= tamanho; i++) {
			caracteres[i - 1] = real(string_char_at(CPF, i));
		}

		// primeiro dígito
		var soma1 = (caracteres[0]*10)+(caracteres[1]*9)+(caracteres[2]*8)+(caracteres[3]*7)+(caracteres[4]*6)+(caracteres[5]*5)+(caracteres[6]*4)+(caracteres[7]*3)+(caracteres[8]*2);
		var primeirodigito = 11 - (soma1 % 11);
		if (primeirodigito >= 10) primeirodigito = 0;

		// segundo dígito
		var soma2 = (caracteres[0]*11)+(caracteres[1]*10)+(caracteres[2]*9)+(caracteres[3]*8)+(caracteres[4]*7)+(caracteres[5]*6)+(caracteres[6]*5)+(caracteres[7]*4)+(caracteres[8]*3)+(caracteres[9]*2);
		var segundodigito = 11 - (soma2 % 11);
		if (segundodigito >= 10) segundodigito = 0;

		if (primeirodigito != caracteres[9] || segundodigito != caracteres[10]) {
			return 0;
		}else{
			return CPF
		}
		
	}
}