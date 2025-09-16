draw_self();

// Cursor
if (ativo && CursorAtivo) {
    draw_set_color(c_black);
    draw_line(pos_cursor, y + 14, pos_cursor, y + 30);
    draw_set_color(-1);
}

// Texto
draw_set_font(fonte_EntradaTexto);
draw_set_color(c_black);
draw_text(x + 8, y + 12, texto);

// Limite de caracteres
if (string_length(texto) >= limite_caracter) {
    draw_set_color(c_red);
    draw_text(x + 8, y + 34, "Limite atingido");
}

draw_set_font(-1);
draw_set_color(-1);