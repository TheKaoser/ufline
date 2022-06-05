draw_set_font(fText);
draw_set_halign(true);

if (gameManager.gameState == 0)
{
	if (gameManager.multiplayer)
	{
		draw_text_color(x, y, "Multiplayer", gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.globalAlpha);
	}
	else
	{
		draw_text_color(x, y, "Multiplayer", gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, 1);
	}
}
else
{
	if (gameManager.secsForRetry > 0)
	{
		draw_text_color(x, y, gameManager.secsForRetry, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, 1);
	}
	else if (gameManager.multiplayer)
	{
		draw_text_color(x, y, "Next round", gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.globalAlpha);
	}
	else
	{
		draw_text_color(x, y, "Retry", gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.globalAlpha);
	}
}