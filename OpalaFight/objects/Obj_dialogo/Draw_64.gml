/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if inicializar == true{
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 200;
	var _c = c_black;
	var _sprite = texto_grid[# infos.Retrato, pagina];
	draw_set_font(Fnt_dialogo);



	if texto_grid[# infos.Lado, pagina] == 0{
	draw_rectangle_color(_xx + 100, _yy, _guil, _guia, _c, _c, _c, _c, false);
	draw_text(_xx+ 90,_yy - 32, texto_grid[# infos.Nome, pagina]);
	draw_text_ext(_xx + 660, _yy + 69, texto_grid[# infos.Texto, pagina], 32, _guil -254);
	draw_sprite_ext(_sprite, 0 , -10, _guia - 180, 3, 3, 0, c_white, 1)
	}
	else{
	draw_rectangle_color(_xx, _yy, _guil - 100 , _guia, _c, _c, _c, _c, false);
	var _stgw = string_width(texto_grid[# infos.Nome, pagina]);
	draw_text(_guil - 0 - _stgw, _yy - 32, texto_grid[# infos.Nome, pagina]);
	draw_text_ext(_xx + 550, _yy + 69, texto_grid[# infos.Texto, pagina], 32, _guil -254);
	draw_sprite_ext(_sprite, 0 ,_guil - 20, _guia - 180, -3, 3, 0, c_white, 1)
	}
}