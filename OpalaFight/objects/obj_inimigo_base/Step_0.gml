/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

switch (estado)
{
	case inimigo.parado:
		
		if (!invencivel)
		{
			sprite_index = spr_inimigo1_andando;
			image_speed = 0;
		}
	
	break;
	
	case inimigo.seguindo:
	break;
	
	case inimigo.atacando:
	break;
	
	case inimigo.dano:
		
		if (!invencivel)
		{
			sangue--;
			
			if (sangue <=0)
			{//Morte do inimigo
				if (place_meeting(x,y, obj_chao) and !pulou)
				{
					temp_y = y;
					mov_vertical = -7.5
					mov_horizontal = -sign(image_xscale) *2;
					sprite_index = spr_inimigo1_morte;
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
						mov_horizontal = 0;
						image_index = 1;
						alarm[1] = room_speed;
						estado = inimigo.morte;
					}
				}				
			}
			else
			{//Dano do inimigo
				sprite_index = spr_inimigo1_dano;
				image_speed = 0;
				image_index = choose(0, 1);
				invencivel = true;
				alarm[0] = room_speed/2;
				estado = inimigo.parado;
			}
		}
		else
		{
			estado = inimigo.seguindo;
		}
		
		y += mov_vertical;
		x += mov_horizontal;
		
	break;
	
	case inimigo.morte:
	break;
}

