function snd_play_pitch(sound, pitch)
{
	audio_sound_pitch(sound,pitch)
	if audio_is_playing(sound)
		audio_stop_sound(sound)
	audio_play_sound(sound,10,false)


}
