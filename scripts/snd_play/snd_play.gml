function snd_play(argument0) {
	if audio_is_playing(argument0)
	audio_stop_sound(argument0)
	audio_sound_pitch(argument0,1)
	audio_play_sound(argument0,10,false)



}
