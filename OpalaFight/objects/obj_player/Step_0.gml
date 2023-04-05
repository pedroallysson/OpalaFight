// acoes
pulo = keyboard_check_pressed(vk_space);

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
}else if(keyboard_check(vk_space)){
	if (place_meeting(x, y, obj_chao))
		{
			if (y >= temp_y)
			{
				mov_vertical = 0;
			}
			
			if (pulo)
			{
				temp_y = y;
				mov_vertical -= 7.5;
				
			}
		}
	else{
		mov_vertical += gravidade;
		sprite_index = spr_pulo;
		image_index = 0;
		}
y += mov_vertical;
if (mov_vertical >0)
{
	image_index = 1;
}

}else{
	sprite_index = spr_parado;
}