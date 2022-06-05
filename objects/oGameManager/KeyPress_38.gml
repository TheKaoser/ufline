/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(gameState == 1) 
{
	if (!multiplayer)
	{
		index1 = clamp(index1 - 1, 0, 4);

		currentRow1 = rows[index1];

		ufoSprite1.y = rows[index1];
	}
	else
	{
		index2 = clamp(index2 - 1, 0, 4);

		currentRow2 = rows[index2];

		if (multiplayer)
		{
			ufoSprite2.y = rows[index2];
		}
	}
}
else if (gameState == 0 && multiplayer)
{
	multiplayer = false;
}