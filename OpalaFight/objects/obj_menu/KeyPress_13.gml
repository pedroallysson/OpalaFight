audio_stop_sound(snd_menu2);
if(index == 0){
	
	room_goto(dialogo);
	
	if room = dialogo
	{
		audio_stop_all();
		audio_play_sound(snd_menu4, 1, true);
	}	
	if room = Ambiente1
	{
		audio_stop_all();
		audio_play_sound(snd_gamemusic2, 7, true);
	}
	if room = Ambiente2
	{
		audio_stop_all();
		audio_play_sound(snd_gamemusic, 8, true);
	}
	if room = Ambiente3
	{
		audio_stop_all();
		audio_play_sound(snd_battle_boss, 9, true);
	}
}else if(index == 3){
		game_end();
	}
	
