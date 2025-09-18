// Função monitoradora
function monitorador()
{
    var guarda = 0;
    caminho  = "C:\\Users\\souza\\PycharmProjects\\AppDesbrava_VersionBeta\\AI\\GET\\memoria.txt"
    while (guarda == 0)
    {
        if (!file_exists(caminho))
        {
			continue;
        }
        else
        {
            return true;
        }
    }
}
