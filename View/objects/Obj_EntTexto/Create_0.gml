texto = "";
ativo = false;
pos_cursor = x + 4;
indice_cursor = 0;
limite_caracter = 21;
CursorAtivo = true;
tempo_cursor = 0;
intervalo_cursor = 30;

// Defina a fonte usada no draw_text (substitua "FonteTexto" pelo nome da sua fonte)
fonte_texto = fonte_EntradaTexto;
tamanho_fonte = 14;

ativar = function() {
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_x >= x && mouse_x <= x + 400 && mouse_y >= y && mouse_y <= y + 50) {
            ativo = true;
        } else {
            ativo = false;
        }
    }
}

entrada_mouse_cursor = function() {
    if (ativo && mouse_check_button_pressed(mb_left)) {
        if (mouse_x >= x + 4 && mouse_x <= x + 400 && mouse_y >= y && mouse_y <= y + 50) {
            var x_mouse = mouse_x - (x + 4);
            var largura = 0;
            indice_cursor = 0;

            draw_set_font(fonte_texto);

            for (var i = 1; i <= string_length(texto); i++) {
                largura += string_width(string_copy(texto, i, 1));
                if (x_mouse < largura) {
                    indice_cursor = i - 1;
                    break;
                }
            }

            if (x_mouse >= largura) {
                indice_cursor = string_length(texto);
            }

            pos_cursor = x + 8 + string_width(string_copy(texto, 1, indice_cursor));
        }
    }
}

inserir_caractere = function(letra) {
    if (string_length(texto) < limite_caracter) {
        texto = string_insert(letra, texto, indice_cursor + 1);
        indice_cursor += string_length(letra);
        draw_set_font(fonte_texto);
        pos_cursor = x + 8 + string_width(string_copy(texto, 1, indice_cursor));
    }
}

deletar_caractere = function() {
    if (indice_cursor > 0) {
        texto = string_delete(texto, indice_cursor, 1);
        indice_cursor -= 1;
        draw_set_font(fonte_texto);
        pos_cursor = x + 8 + string_width(string_copy(texto, 1, indice_cursor));
    }
}