// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function setSpriteAndando(_obj)
{
	var sprite = noone;
	
	switch(_obj)
	{
		case "obj_inimigo01":
			sprite = spr_inimigo1_andando;
		break;
		
		case "obj_inimigo02":
			sprite = spr_inimigo2_andando;
		break;
		
		case "obj_inimigo03":
			sprite = spr_inimigo3_andando;
		break;
	}
	
	return sprite;
}


function setSpriteAtacando(_obj)
{
	var sprite = noone;
	
	switch(_obj)
	{
		case "obj_inimigo01":
			sprite = spr_inimigo1_soco;
		break;
		
		case "obj_inimigo02":
			sprite = spr_inimigo2_soco;
		break;
		
		case "obj_inimigo03":
			sprite = spr_inimigo3_soco;
		break;
	}
	
	return sprite;
}


function setSpriteDano(_obj)
{

	var sprite = noone;
	
	switch(_obj)
	{
		case "obj_inimigo01":
			sprite = spr_inimigo1_dano;			
		break;
		
		case "obj_inimigo02":
			sprite = spr_inimigo2_dano;						
		break;
		
		case "obj_inimigo03":
			sprite = spr_inimigo3_dano;			
		break;
	}
	
	return sprite;
}


function setSpriteMorte(_obj)
{

	var sprite = noone;
	
	switch(_obj)
	{
		case "obj_inimigo01":
			sprite = spr_inimigo1_morte;
		break;
		
		case "obj_inimigo02":
			sprite = spr_inimigo2_morte;
		break;
		
		case "obj_inimigo03":
			sprite = spr_inimigo3_morte;
		break;
	}
	
	return sprite;
}

