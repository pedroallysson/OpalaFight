/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
gravidade = 0.35;
mov_vertical = 0;
temp_y = 0;
pulou = false;

velocidade = 0.75;
xspeed = 0;
yspeed = 0;
depth = 0;

sangueplayer = 15;
sangueplayermax = 15;



enum player {
	parado,
	andando,
	pulando,
	atacando,
	dano,
	morrendo
}

estado = player.parado;