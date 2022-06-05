draw_set_font(fText);
draw_set_halign(true);

if (gameManager.gameState == 0)
{
	if (gameManager.multiplayer)
	{
		draw_text_color(x, y, "Singleplayer", gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, 1);
	}
	else
	{
		draw_text_color(x, y, "Singleplayer", gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.globalAlpha);
	}
}
else if (gameManager.multiplayer)
{
	draw_text_color(x, y, string(gameManager.totalWins1) + "      -      " + string(gameManager.totalWins2) + "", gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, 1);
}
else
{
	draw_text_color(x, y, "High Score - " + string(gameManager.highScore), gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, gameManager.operaRed, 1);
}