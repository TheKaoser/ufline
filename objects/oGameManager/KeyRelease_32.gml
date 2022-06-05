/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (gameState == 1)
{
	if (instance_exists(oSelectionControls))
	{
		instance_destroy(oDirectionControls);	
		instance_destroy(oSelectionControls);
	}
	else if (instance_exists(oSelectionControls1))
	{
		instance_destroy(oDirectionControls1);
		instance_destroy(oSelectionControls1);
	}
	if (mana1 >= ufoCosts[currentKind1])
	{
		audio_play_sound(Lanzar_1_UFO_wars, 2, false);
		alarm[0] = 60;
		ufo1 = instance_create_layer(startCol, rows[index1], 0, ufoObjects[currentKind1]);
		ufo1.player = 1;
		ufo1.image_xscale = scale;
		ufo1.image_yscale = scale;
		ufo1.attackArea.image_xscale = scale;
		ufo1.attackArea.image_yscale = scale;
		ufo1.ufoSpeed *= scale;
		ufo1.gameManager = id;
		mana1 -= ufoCosts[currentKind1];
	
		for (i = 4; i >= mana1; i--)
		{
			oSpriteManas1[i].visible = false;
		}
	}
}
else
{
	if (gameState == 0 || secsForRetry == 0)
	{
		StartGame();
	}
}