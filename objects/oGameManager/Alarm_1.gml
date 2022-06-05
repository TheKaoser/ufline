/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (gameState == 1)
{
	if (!multiplayer)
	{
		mana2 = clamp(mana2 + 1 * currentScore * 0.001, 0, 5);
	}
	else
	{
		mana2 = clamp(mana2 + 1, 0, 5);
	}

	if (multiplayer)
	{
		for (i = 0; i < mana2; i++)
		{
			oSpriteManas2[i].visible = true;
		}
	}

	alarm[1] = 60;
}