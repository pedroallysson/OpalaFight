/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//sistema de colisao horizontal
var _velh = sign(velh);

//deixar velh positivo sempre
repeat(abs(velh))
{
	
	if (place_meeting(x + _velh, y, obj_colisao))
	{
		velh = 0;	
	}
	else
	{
			x += _velh;
			sprite_index = spr_player_walk;
	}
}

//sistema de colisao vertical
var _velv = sign(velv);

//deixar velh positivo sempre
repeat(abs(velv))
{
	
	if (place_meeting(x, y + _velv, obj_colisao))
	{
		velv = 0;	
	}
	else
	{
			y += _velv;	
			sprite_index = spr_player_walk;
	}
}