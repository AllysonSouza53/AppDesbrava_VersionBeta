function LerArquivo(caminho) {
    var texto = "";

    if (file_exists(caminho)) {
        var arquivo = file_text_open_read(caminho);
        while (!file_text_eof(arquivo)) {
            texto += file_text_read_string(arquivo);
            file_text_readln(arquivo); // pular linha
        }
        file_text_close(arquivo);
    }
    return texto;
}

function EscreverArquivo(caminho, texto) {
    var arquivo = file_text_open_write(caminho);
    file_text_write_string(arquivo, texto);
    file_text_close(arquivo);
}

function AdicionarAoArquivo(caminho, texto) {
    var arquivo = file_text_open_append(caminho);
	file_text_writeln(arquivo);
    file_text_write_string(arquivo, texto);
    file_text_close(arquivo);
}