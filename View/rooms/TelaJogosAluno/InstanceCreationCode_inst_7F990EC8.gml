Jogo1 = instance_find(Obj_BotaoJogo_2, 0);
Jogo2 = instance_find(Obj_BotaoJogo_1, 0);
Jogo3 = instance_find(Obj_BotaoJogo_2, 1);
Jogo4 = instance_find(Obj_BotaoJogo_1, 1);
Jogo5 = instance_find(Obj_BotaoJogo_2, 2);
Jogo6 = instance_find(Obj_BotaoJogo_1, 2);
clique = function()
{
	Jogo1.x +=210;
	Jogo2.x +=210;
	Jogo3.x +=210;
	Jogo4.x +=210;
	Jogo5.x +=210;
	Jogo6.x +=210;
	if(Jogo1.x >= 1476)
	{
		Jogo1.x =425;
	}
	if(Jogo2.x >= 1476)
	{
		Jogo2.x =425;
	}
	if(Jogo3.x >= 1476)
	{
		Jogo3.x =425;
	}
	if(Jogo4.x >= 1476)
	{
		Jogo4.x =425;
	}
	if(Jogo5.x >= 1476)
	{
		Jogo5.x =425;
	}
	if(Jogo6.x >= 1476)
	{
		Jogo6.x =425;
	}
	
}