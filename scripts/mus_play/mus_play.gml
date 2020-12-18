///mus_play(track)
function mus_play(argument0) {
	if (global.playing_music_index != -1) {
	    audio_stop_sound(global.playing_music_index);
	}
	global.playing_music_index = audio_play_sound(argument0, 10, 1);
	//audio_sound_gain(global.music_playing_index, global.musvol, 0);
}
