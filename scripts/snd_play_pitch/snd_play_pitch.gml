function snd_play_pitch(argument0, argument1) {
	audio_sound_pitch(argument0,argument1)
	if audio_is_playing(argument0)
	audio_stop_sound(argument0)
	audio_play_sound(argument0,10,false)


}
