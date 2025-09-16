ativar();

if (ativo) {
    entrada_mouse_cursor();

    // Cursor piscando
    tempo_cursor += 1;
    if (tempo_cursor >= intervalo_cursor) {
        CursorAtivo = !CursorAtivo;
        tempo_cursor = 0;
    }
}
