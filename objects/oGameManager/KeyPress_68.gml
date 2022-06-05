/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (gameState == 1)
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