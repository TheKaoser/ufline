/// @description Insert description here
// You can write your code in this editor

if (gameState == 1)
{
	currentKind2 = irandom_range(0, 3);

	rand1 = irandom_range(0, 1);
	rand2 = irandom_range(0, 1);

	if (rand1 == 0)
	{
		index2 = clamp(index2 + 1, 0, 4);

		currentRow2 = rows[index2];
	}
	else
	{
		index2 = clamp(index2 - 1, 0, 4);

		currentRow2 = rows[index2];
	}

	if (rand2 == 0 && mana2 >= ufoCosts[currentKind2])
	{
		audio_play_sound(Lanzar_1_UFO_wars, 2, false);
		alarm[1] = 60;
		ufo2 = instance_create_layer(endCol, rows[index2], 0, ufoObjects[currentKind2]);
		ufo2.image_xscale = scale;
		ufo2.image_yscale = scale;
		ufo2.image_xscale *= -1;
		ufo2.player = 2;
		ufo2.attackArea.image_xscale = scale;
		ufo2.attackArea.image_yscale = scale;
		ufo2.attackArea.image_xscale *= -1;
		ufo2.ufoSpeed *= scale;
		ufo2.gameManager = id;
		mana2 -= ufoCosts[currentKind2];
	}

	alarm[2] = 60 * random_range(0.3, 0.6);
}