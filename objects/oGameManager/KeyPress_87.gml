/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (gameState == 1)
{
	index1 = clamp(index1 - 1, 0, 4);

	currentRow1 = rows[index1];

	ufoSprite1.y = rows[index1];
}
else if (gameState == 0 && multiplayer)
{
	multiplayer = false;
}