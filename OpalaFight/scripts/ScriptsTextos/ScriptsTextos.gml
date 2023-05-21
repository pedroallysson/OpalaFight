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