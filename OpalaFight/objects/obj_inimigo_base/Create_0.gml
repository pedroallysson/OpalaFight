/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

invencivel = false;
sangue = 5;
sanguemaximo = 5;
mov_horizontal = 0;
mov_vertical = 0;
gravidade = 0.35;
temp_y = 0;
pulou = false;

seguiu = false;
visao = 50;
distanciagolpe = 5;


depth = 1;

nomeObjeto = object_get_name(object_index);

sprite_andando = setSpriteAndando(nomeObjeto);
sprite_atacando = setSpriteAtacando(nomeObjeto);
sprite_dano = setSpriteDano(nomeObjeto);
sprite_morte = setSpriteMorte(nomeObjeto);

enum inimigo
{
	parado,
	seguindo,
	atacando,
	dano,
	morte
}

estado = noone;