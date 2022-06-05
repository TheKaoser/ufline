/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (gameState == 1)
{
	if (!multiplayer)
	{
		if (currentKind1 != 3)
		{
			audio_play_sound(Cambiar_nave_UFO_wars, 2, false);
		}

		currentKind1 = clamp(currentKind1 + 1, 0, 3);
		instance_destroy(ufoSprite1);
		ufoSprite1 = instance_create_layer(startCol, rows[index1], 0, ufoSprites[currentKind1]);
		ufoSprite1.image_xscale = scale;
		ufoSprite1.image_yscale = scale;
	}
	else
	{
		if (currentKind2 != 0 && multiplayer)
		{
			audio_play_sound(Cambiar_nave_UFO_wars, 2, false);
		}

		currentKind2 = clamp(currentKind2 - 1, 0, 3);

		if (multiplayer)
		{
			instance_destroy(ufoSprite2);
			ufoSprite2 = instance_create_layer(endCol, rows[index2], 0, ufoSprites[currentKind2]);
			ufoSprite2.image_xscale = scale;
			ufoSprite2.image_yscale = scale;
			ufoSprite2.image_xscale *= -1;	
		}
	}
}