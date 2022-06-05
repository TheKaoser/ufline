/// @description Global Alpha
alarm[4] = 3;

if (alphaIncreasing)
{
	globalAlpha += 0.2;
	if (globalAlpha > 0.9)
	{
		alphaIncreasing = false;
	}
}
else
{
	globalAlpha -= 0.2;
	if (globalAlpha < 0.1)
	{
		alphaIncreasing = true;
	}
}