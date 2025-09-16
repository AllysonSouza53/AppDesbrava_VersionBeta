Jogo1 = instance_find(Obj_BotaoJogo_2, 0);
Jogo2 = instance_find(Obj_BotaoJogo_1, 0);
Jogo3 = instance_find(Obj_BotaoJogo_2, 1);
Jogo4 = instance_find(Obj_BotaoJogo_1, 1);
Jogo5 = instance_find(Obj_BotaoJogo_2, 2);
Jogo6 = instance_find(Obj_BotaoJogo_1, 2);
clique = function()
{
	Jogo1.x -=210;
	Jogo2.x -=210;
	Jogo3.x -=210;
	Jogo4.x -=210;
	Jogo5.x -=210;
	Jogo6.x -=210;
	if(Jogo1.x <= 424)
	{
		Jogo1.x =1475;
	}
	if(Jogo2.x <= 424)
	{
		Jogo2.x =1475;
	}
	if(Jogo3.x <= 424)
	{
		Jogo3.x =1475;
	}
	if(Jogo4.x <= 424)
	{
		Jogo4.x =1475;
	}
	if(Jogo5.x <= 424)
	{
		Jogo5.x =1475;
	}
	if(Jogo6.x <= 424)
	{
		Jogo6.x =1475;
	}
	
}