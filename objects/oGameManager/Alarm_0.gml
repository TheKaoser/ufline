/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (gameState == 1)
{
	mana1 = clamp(mana1 + 1, 0, 5);

	for (i = 0; i < mana1; i++)
	{
		oSpriteManas1[i].visible = true;
	}

	if (mana1 != 5)
	{
		alarm[0] = 60;
	}
}