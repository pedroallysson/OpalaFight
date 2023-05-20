audio_stop_sound(snd_menu4);
if(index == 0){
	audio_play_sound(snd_gamemusic2, 1, true);
	room_goto(dialogo);	
}else if(index == 3){
	game_end();
	}
	
