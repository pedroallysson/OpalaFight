/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if inicializar == false{
	scr_textos();
	inicializar = true;
}
if mouse_check_button_pressed(mb_left){
	if pagina < ds_grid_height(texto_grid) - 1{
		pagina++;
	}else{
		
		instance_destroy();
	}
}
