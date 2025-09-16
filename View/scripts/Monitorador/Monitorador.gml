// Função monitoradora
function monitorador()
{
    var guarda = 0;
    
    while (guarda == 0)
    {
        if (!file_exists(working_directory+"BancoInterno\\Buscar\\memoria.txt"))
        {
			continue;
        }
        else
        {
            return 1;
        }
    }
}
