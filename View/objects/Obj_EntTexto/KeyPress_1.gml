if (ativo) {
    // Captura de todos os caracteres digitados (Unicode)
    var entrada = keyboard_string;
    if (string_length(entrada) > 0) {
        for (var i = 1; i <= string_length(entrada); i++) {
            inserir_caractere(string_copy(entrada, i, 1));
        }
        keyboard_string = "";
    }

    // Backspace
    if (keyboard_check_pressed(vk_backspace)) {
        deletar_caractere();
    }
}