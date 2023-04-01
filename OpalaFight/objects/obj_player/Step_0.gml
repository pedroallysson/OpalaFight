// acoes

if(keyboard_check(vk_right)){
	x+=1.5;
	sprite_index = spr_player_walk;

	image_xscale = abs(image_xscale)
}else if(keyboard_check(vk_left)){
	x-=1.5;
	sprite_index = spr_player_walk;

	image_xscale = abs(image_xscale) * -1;
}else if(keyboard_check(vk_up)){
	y-=1.5;
	sprite_index = spr_player_walk;

	image_xscale = abs(image_xscale);
}else if(keyboard_check(vk_down)){
	y+=1.5;
	sprite_index = spr_player_walk;

	image_xscale = abs(image_xscale);
}else if(keyboard_check(ord("Z"))){
	sprite_index = spr_soco;

	image_xscale = abs(image_xscale);
}else{
	sprite_index = spr_parado;
}