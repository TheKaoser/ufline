/// @description Insert description here
// You can write your code in this editor

if (gameState == 1)
{
	for (i = 0; i < 4; i++)
	{
		if (i < ufoCosts[currentKind1] && ufoCosts[currentKind1] <= mana1)
		{
			oSpriteManas1[i].image_alpha = globalAlpha;
		}
		else
		{
			oSpriteManas1[i].image_alpha = 1;
		}
	
		if (i < ufoCosts[currentKind2] && ufoCosts[currentKind2] <= mana2)
		{
			oSpriteManas2[i].image_alpha = globalAlpha;
		}
		else
		{
			oSpriteManas2[i].image_alpha = 1;
		}
	}
}