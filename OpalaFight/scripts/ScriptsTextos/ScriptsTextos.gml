// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
draw_set_font(Fnt_dialogo);
function scr_textos(){
	switch npc_nome{
		case "Primeiro Texto":
			
			ds_grid_add_text("Fiquei sabendo de um esquema corrupto entre os professores.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text(" Eu mal posso acreditar que meus professores têm um esquema corrupto para conceder diplomas apenas para aqueles que eles consideram dignos.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text(" Isso é totalmente injusto!",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("É realmente uma situação difícil. Mas você é um estudante talentoso, Chris. ",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Tenho certeza de que você encontrará uma maneira de superar isso.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Eu decidi lutar contra meus professores e seus seguidores em uma série de batalhas épicas para ganhar o direito de me formar. ",spr_retrato_1, 0, "Chris");
			ds_grid_add_text(" Mas cada professor tem habilidades e estilos de luta únicos, exigindo que eu me adapte e use estratégias diferentes para vencê-los.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Uau, isso parece muito desafiador.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Você está se preparando para essas batalhas?",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text(" Sim, estou treinando duro para melhorar minhas habilidades de luta e adquirir novos equipamentos e itens. ",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Quero estar preparado para qualquer situação que possa surgir.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Isso é muito inteligente. Você acha que vai precisar de ajuda?",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text(" Definitivamente. Qualquer ajuda seria bem-vinda. Eu estou determinado a conseguir meu diploma e me formar nesta universidade. Nada vai me impedir.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Estou ao seu lado, Chris. Conte comigo para o que precisar.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Obrigado, amigo. Com sua ajuda e meu treinamento, tenho certeza de que posso vencer meus professores e seus seguidores.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Conseguindo assim o meu diploma.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Siga em frente ->->",spr_retrato_2, 1, "Matheus");
			
		break;
		case "segundo Texto":
			
			ds_grid_add_text("Matheus, temos que agir rápido. Recebi informações confiáveis de que o reitor está fugindo da cidade de Pedro II. Acredito que ainda podemos alcançá-lo.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("É uma oportunidade que não podemos deixar escapar, Chris. Precisamos detê-lo e expor toda a corrupção que está acontecendo na universidade.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Estou determinado a acabar com esse esquema corrupto e garantir que todos os estudantes tenham a oportunidade justa de obter seus diplomas.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Como podemos chegar até o reitor? Você tem alguma ideia de onde ele possa estar se escondendo?",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Pelas informações que recebi, suspeito que ele tenha procurado abrigo em Piripiri. ",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("No entanto, há relatos de que ele pretende sair de Pedro II pela estrada principal.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Então, temos que interceptá-lo na saída da cidade! Vamos montar um plano para cercá-lo e impedi-lo de escapar.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Exatamente. Precisamos mobilizar todos os estudantes que estão dispostos a lutar contra a corrupção. ",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Vamos nos dividir em equipes estratégicas ao longo da estrada e aguardar o momento certo para agir.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Enquanto isso, vou entrar em contato com as autoridades locais e garantir que tenham conhecimento da situação. É importante ter apoio legal nessa empreitada.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Ótimo. Quanto mais apoio tivermos, melhor. Vamos mostrar a todos que não iremos permitir que a injustiça prevaleça.",spr_retrato_1, 0, "Chris");	
			ds_grid_add_text("Siga em frente ->->",spr_retrato_2, 1, "Matheus");
		break;
		case "Terceiro Texto":
			
			
			ds_grid_add_text("Parabéns, Chris! Você foi incrível em sua missão de expor a corrupção e capturar o reitor. Sua determinação e coragem são verdadeiramente inspiradoras.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Muito obrigado, Matheus. Não teria conseguido sem a sua ajuda e apoio. Juntos, conseguimos fazer a diferença e lutar por um ambiente acadêmico justo.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Agora é hora de celebrar essa conquista e seguir em frente.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Tenho certeza de que o Instituto Federal do Piauí (IFPI) ficará orgulhoso em receber você de volta e conceder o diploma que você merece.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Sim, estou ansioso para voltar ao IFPI e finalmente receber meu diploma. Essa vitória é para todos os estudantes que foram afetados pela corrupção. ",spr_retrato_1, 0, "Chris");
			ds_grid_add_text(" Vamos construir um futuro melhor juntos.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Tenho certeza de que seu exemplo inspirará muitos outros estudantes a lutar por seus direitos e combater a injustiça. Você é um verdadeiro herói.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Obrigado novamente, Matheus. Sem você e todos os outros que se uniram nessa jornada, não teríamos alcançado esse resultado. ",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("Estou grato por ter você como amigo e aliado.",spr_retrato_1, 0, "Chris");
			ds_grid_add_text("O sentimento é recíproco, Chris. Estarei ao seu lado em todas as etapas da sua jornada acadêmica e além. Juntos, enfrentaremos qualquer desafio que surgir.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Vamos em frente, Matheus. Comemoraremos essa vitória e continuaremos lutando por um ensino justo e transparente. Nada nos deterá.",spr_retrato_1, 0, "Chris");	
			ds_grid_add_text("Com certeza, Chris. O futuro é nosso, e estamos prontos para enfrentá-lo de cabeça erguida. ",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Parabéns novamente pela sua conquista e vamos voltar ao IFPI para receber o diploma que você merece.",spr_retrato_2, 1, "Matheus");
			ds_grid_add_text("Siga em frente ->->",spr_retrato_2, 1, "Matheus");
		break;
		
	}
}function ds_grid_add_row(){
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}