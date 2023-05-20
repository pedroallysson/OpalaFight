// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Script3(){
	var myroom = room;
	audio_stop_all();

	switch(myroom)
	{
		case Ambiente1: audio_play_sound(snd_menu4, 1, true);; 
		break;
		case Ambiente2: play snd_gamemusic; 
		break;
	}
}



