if (room == rm_space) {
	audio_play_sound(msc_song, 2, true);	
} else if (room == rm_gameover) {
	audio_play_sound(snd_lose, 1, false);	
}