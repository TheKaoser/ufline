/// @description Insert description here
// You can write your code in this editor
if (gameState == 1 && !multiplayer)
{
	draw_set_font(fText);
	draw_set_halign(true);
	draw_text(x, y, currentScore);
	draw_text_color(x, y, currentScore, operaRed, operaRed, operaRed, operaRed, 1);
}