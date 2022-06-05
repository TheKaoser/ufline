// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StartGame()
{
	audio_play_sound(Lanzar_1_UFO_wars, 0, false);
	
	gameState = 1;
	
	endingGame = false;
	
	currentScore = 0;
	
	// set mana
	mana1 = 2;
	mana2 = 2;
	alarm[0] = 60;
	alarm[1] = 60;
	
	currentKind1 = 0;
	currentKind2 = 0;
	
	index1 = 2;
	index2 = 2;
	
	// draw sprites
	ufoSprite1 = instance_create_layer(startCol, rows[index1], 0, ufoSprites[currentKind1]);
	ufoSprite1.image_xscale = scale;
	ufoSprite1.image_yscale = scale;

	if (multiplayer)
	{
		ufoSprite2 = instance_create_layer(endCol, rows[index2], 0, ufoSprites[currentKind2]);
		ufoSprite2.image_xscale = scale;
		ufoSprite2.image_yscale = scale;
		ufoSprite2.image_xscale *= -1;
		
		for (i = 4; i >= mana2; i--)
		{
			oSpriteManas2[i].visible = false;
		}
		
		for (i = 0; i < mana2; i++)
		{
			oSpriteManas2[i].visible = true;
		}
	}
	else
	{	
		alarm[3] = 60 * 0.25;
		
		alarm[2] = 60 * random_range(0.5, 2);
		for (i = 4; i >= 0; i--)
		{
			oSpriteManas2[i].visible = false;
		}
	}
	
	for (i = 0; i < mana1; i++)
	{
		oSpriteManas1[i].visible = true;
	}
	
	// change music
	audio_pause_sound(Intro_UFO_wars);
	audio_play_sound(In_game_UFO_wars, 1, true);
	
	// errase menu
	oSinglePlayerText.visible = false;
	oMultiPlayerText.visible = false;
	
	if (!multiplayer)
	{
		instance_create_layer(startCol, rows[index1], 0, oDirectionControls);
		instance_create_layer(startCol * 2.5, rows[index1], 0, oSelectionControls);
	}
	else if (multiplayer)
	{		
		instance_create_layer(startCol, rows[index1], 0, oDirectionControls1);
		instance_create_layer(startCol * 2.5, rows[index1], 0, oSelectionControls1);
		
		instance_create_layer(endCol, rows[index2], 0, oDirectionControls2);
		instance_create_layer(room_width - startCol * 2.5, rows[index2], 0, oSelectionControls2);
	}
}

function endGame(gameManager)
{
	if (instance_exists(oSelectionControls))
	{
		instance_destroy(oDirectionControls);	
		instance_destroy(oSelectionControls);
	}
	if (instance_exists(oSelectionControls1))
	{
		instance_destroy(oDirectionControls1);
		instance_destroy(oSelectionControls1);
	}
	if (instance_exists(oSelectionControls2))
	{
		instance_destroy(oDirectionControls2);
		instance_destroy(oSelectionControls2);
	}
	
	for (i = instance_number(oUFO) - 1; i >= 0; i--)
	{
		if (instance_find(oUFO, i) != id)
		{
			ufoTemp = instance_find(oUFO, i);
			instance_destroy(ufoTemp.attackArea);
			instance_destroy(ufoTemp);
		}
	}
		
	gameManager.gameState = 2;
	
	for (i = 4; i >= 0; i--)
	{
		gameManager.oSpriteManas1[i].visible = false;
		gameManager.oSpriteManas2[i].visible = false;
	}
	
	instance_destroy(gameManager.ufoSprite1);
	if (gameManager.multiplayer)
	{
		instance_destroy(gameManager.ufoSprite2);
	}
	
	audio_pause_sound(In_game_UFO_wars);
	audio_play_sound(Intro_UFO_wars, 1, true);
	
	oSinglePlayerText.visible = true;
	oMultiPlayerText.visible = true;
	
	gameManager.secsForRetry = 3;
	gameManager.alarm[5] = 60;
}