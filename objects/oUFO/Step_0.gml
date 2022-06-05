/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (!isAttacking && !isDead)
{
	x = player == 1 ? x + ufoSpeed : x - ufoSpeed;
}

if (player == 1 && x > gameManager.endCol)
{
	if (gameManager.multiplayer && alarm[1] == -1 && !gameManager.endingGame)
	{
		gameManager.lastWinner = 1;
		gameManager.totalWins1++;
		gameManager.endingGame = true;
		
		game_set_speed(10, gamespeed_fps);
		
		audio_sound_pitch(In_game_UFO_wars, 0.5);
		audio_sound_pitch(Disparo_1_UFO, 0.5);
		audio_sound_pitch(Disparo_2_UFO, 0.5);
		audio_sound_pitch(Kamikaze_UFO, 0.5);
		audio_sound_pitch(Cambiar_nave_UFO_wars, 0.5);
		audio_sound_pitch(Explosi_n_UFO, 0.5);
		audio_sound_pitch(Lanzar_1_UFO_wars, 0.5);
		
		//audio_play_sound(Lanzar_5_UFO_wars, 0, false);
		
		for (i = 0; i < instance_number(oUFO); i++)
		{
			if (instance_find(oUFO, i) != id)
			{
				foundUFO = instance_find(oUFO, i);
				foundUFO.image_alpha = 0.5;
			}
		}
		
		for (i = 0; i < instance_number(oLaser); i++)
		{
			foundLaser = instance_find(oLaser, i);
			foundLaser.image_alpha = 0.5;
		}
		
		isIndestructible = true;
		
		alarm[1] = 20;
	}
	else if (!gameManager.multiplayer && alarm[2] == -1)
	{
		gameManager.currentScore += 50
		alarm[2] = 10;
	}
}
else if (player == 2 && x < gameManager.startCol)
{
	if (alarm[1] == -1 && !gameManager.endingGame)
	{
		if (!gameManager.multiplayer)
		{
			if (gameManager.currentScore > gameManager.highScore)
			{
				gameManager.highScore = gameManager.currentScore;
			}
		}
		else
		{
			gameManager.lastWinner = 2;
			gameManager.totalWins2++;
		}
	
		gameManager.endingGame = true;
		
		game_set_speed(10, gamespeed_fps);
		audio_sound_pitch(In_game_UFO_wars, 0.5);
		audio_sound_pitch(Disparo_1_UFO, 0.5);
		audio_sound_pitch(Disparo_2_UFO, 0.5);
		audio_sound_pitch(Kamikaze_UFO, 0.5);
		audio_sound_pitch(Cambiar_nave_UFO_wars, 0.5);
		audio_sound_pitch(Explosi_n_UFO, 0.5);
		audio_sound_pitch(Lanzar_1_UFO_wars, 0.5);
		
		//audio_play_sound(Lanzar_5_UFO_wars, 0, false);
		
		for (i = 0; i < instance_number(oUFO); i++)
		{
			if (instance_find(oUFO, i) != id)
			{
				foundUFO = instance_find(oUFO, i);
				foundUFO.image_alpha = 0.5;
			}
		}
		
		for (i = 0; i < instance_number(oLaser); i++)
		{
			foundLaser = instance_find(oLaser, i);
			foundLaser.image_alpha = 0.5;
		}
		
		isIndestructible = true;
	
		alarm[1] = 20;
	}
}

if (isDead && !isIndestructible && sprite_index != deathSprite)
{
	audio_play_sound(Explosi_n_UFO, 2, false);
	sprite_index = deathSprite;
	image_index = 0;
}

if (gameManager.endingGame)
{
	image_alpha = 0.5;
}