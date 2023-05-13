
#region Entradas do teclado
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
space = keyboard_check_pressed(vk_space);
punch = keyboard_check_pressed(ord("Z"));
left_released = keyboard_check_released(vk_left);
right_released = keyboard_check_released(vk_right); 
up_released = keyboard_check_released(vk_up);
down_released = keyboard_check_released(vk_down);
#endregion


#region Profundidade no cenário
	
	/*var inimigo = instance_place(x, y, obj_inimigo_base);
	
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
	}*/


#endregion

#region Verificando o Sangue

	if (sangueplayer <=0)
	{
		estado = player.morrendo;
	}

#endregion

#region Verificando areas de batalha
	var inst_area = instance_place(x,y, obj_battle_area);
	
	if (inst_area != noone)
	{
		inst_area.player_entrou = true;
		
		if (x >= (inst_area.x + inst_area.sprite_width/2) and inst_area.inimigos)
		{
			x = inst_area.x + inst_area.sprite_width/2;
		}
	}

#endregion

switch (estado)
{
	#region parado
	case player.parado:
		xspeed = 0;
		yspeed = 0;
		
		sprite_index = spr_parado;
		mask_index = spr_parado;
		
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
	
	#endregion
	
	#region andando
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
	
	#endregion
	
	#region pulando
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
	#endregion
	
	#region atacando
	case player.atacando:
	
		mask_index = spr_mask_soco;
		
		yspeed = 0;
		xspeed = 0;
		
		var inst = instance_place(x, y, obj_inimigo_base);
		
		if (inst != noone)
		{
			inst.estado = inimigo.dano;
		}
		
		if (sprite_index != spr_soco)
		{
			sprite_index = spr_soco;
			image_speed = 1;	
			image_index = 0;
			audio_play_sound(snd_punch, 1 ,false);
		}
		
		if (image_index == 1) and (!punch)
		{
			estado = player.parado;	
		}
		
	break;
	#endregion
	
	#region dano
	case player.dano:
	
		speed = 0;
		sprite_index = spr_dano;
	
		
		if (!alarm[0])
		{
			sangueplayer--;
			audio_play_sound(snd_damage, 5 ,false);
			alarm[0] = room_speed/3;
		}
	
	break;
	#endregion
	
	#region morrendo
	case player.morrendo:
	
		sprite_index = spr_morte;
		audio_play_sound(snd_die, 2 ,false);
		

		
		if (image_index == 2)
		{
			speed = 0;
			image_speed = 0;
			

			
			if (!alarm[1])
			{
				alarm[1] = room_speed/2;
			}
		}
	
		
	break;	
	#endregion
}

if (estado != player.pulando)
{
	y = clamp(y, 128, 160);
}

if (estado != player.morrendo and estado != player.pulando)
{
	x += xspeed;
	y += yspeed;	
}

if distance_to_object(Obj_par_npcs) <= 50 {
	if keyboard_check_pressed(ord("F")){
		var _npc = instance_nearest(x, y, Obj_par_npcs);
		var _dialogo = instance_create_layer(x, y, "Dialogo", Obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}

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
}*/