function snd_play_pitch_at(sound, pitch, x, y, falloff_min, falloff_max, falloff_strength)
{
	audio_sound_pitch(sound,pitch)
	if audio_is_playing(sound)
		audio_stop_sound(sound)
	audio_play_sound_at(sound, x, y, 0, falloff_min, falloff_max, falloff_strength, 0, 0)


}
