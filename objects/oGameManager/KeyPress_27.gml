/// @description Insert description here
// You can write your code in this editor

if (gameState != 0)
{
	game_set_speed(60, gamespeed_fps);
	audio_sound_pitch(In_game_UFO_wars, 1);
	audio_sound_pitch(Disparo_1_UFO, 1);
	audio_sound_pitch(Disparo_2_UFO, 1);
	audio_sound_pitch(Kamikaze_UFO, 1);
	audio_sound_pitch(Cambiar_nave_UFO_wars, 1);
	audio_sound_pitch(Explosi_n_UFO, 1);
	audio_sound_pitch(Lanzar_1_UFO_wars, 1);

	endGame(id);
	gameState = 0;
}