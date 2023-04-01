/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _right, _left;

chao = place_meeting(x,y +1, obj_colisao);

_right = keyboard_check(vk_right);
_left = keyboard_check(vk_left);
_jump = keyboard_check(vk_space);

velh = (_right - _left) * max_velh;

if (!chao)
{
	velv += grav;
}
else
{
	if (_jump)
	{
		velv = -max_velv;
		yscale = 1.5;
		xscale = .5;
	}
}