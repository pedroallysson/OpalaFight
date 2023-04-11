
#region Entradas do teclado
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
space = keyboard_check_pressed(vk_space);
punch = keyboard_check(ord("Z"));
left_released = keyboard_check_released(vk_left);
right_released = keyboard_check_released(vk_right); 
up_released = keyboard_check_released(vk_up);
down_released = keyboard_check_released(vk_down);
#endregion


#region Profundidade no cenário
	
	var inimigo = instance_place(x, y, obj_inimigo_base);
	if (inimigo != noone)
	{
		if (y < inimigo.y)
		{
			depth = 2;
		}
		else
		{
			depth = 0;
		}
	}


#endregion

switch (estado)
{
	case player.parado:
		xspeed = 0;
		yspeed = 0;
		
		sprite_index = spr_parado;
		
		if (left or right or up or down)
		{
			estado = player.andando;
		}
		
		if (space)
		{
			estado = player.pulando;
			pulou = false;
		}
		else if(punch)
		{
			estado = player.atacando;
		}
		
	break;
	
	case player.andando:
	
		sprite_index = spr_player_walk;
		image_speed = 1;
		
		if (left or right)
		{	
			if (abs(xspeed) <= velocidade)
			{
				xspeed += (right - left) * velocidade;
			}
		}
		
		if (up or down)
		{
			if (abs(yspeed) <= velocidade)
			{
				yspeed += (down - up) * velocidade;
			}
		}
		
		if (xspeed !=0)
		{
			image_xscale = sign(xspeed);
		}
		
		if (right_released or left_released or up_released or down_released)
		{
			estado = player.parado;
		}
		
		if (space)
		{
			estado = player.pulando;
			pulou = false;
		}
		else if(punch)
		{
			estado = player.atacando;
		}
	break;
	
	case player.pulando:
		
		if (mov_vertical > 0)
		{
			image_index = 1;
		}
		
		if (place_meeting(x, y, obj_chao) and !pulou)
		{
			temp_y = y;
			mov_vertical = -7.5;
			sprite_index = spr_pulo;
			image_speed = 0;
			image_index = 0;
			pulou = true;
		}
		else
		{
			if (y < temp_y)
			{
				mov_vertical += gravidade;
			}
			else
			{
				mov_vertical = 0;
				estado = player.parado;
			}	
		}
		y += mov_vertical;
	
	break;
	
	case player.atacando:
	
		var inst = instance_place(x, y, obj_inimigo_base);
		
		if (inst != noone)
		{
			inst.estado = inimigo.dano;
		}
		
		sprite_index = spr_soco;
		image_speed = 1;
		
		if (image_index == image_number)
		{
			estado = player.parado;	
		}
		
	break;
	
	case player.dano:
	break;
	
	case player.morrendo:
	break;	
}

if (estado != player.pulando)
{
	y = clamp(y, 118, 160);
}

x += xspeed;
y += yspeed;

/*
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