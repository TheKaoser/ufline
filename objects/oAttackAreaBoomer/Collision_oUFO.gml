/// @description Inserte aquí la descripción
// Puede escribir su código en este 

if (other.player != ufo.player)
{
	if (!hasCollided)
	{
		hasCollided = true;
		image_xscale *= 3;
		image_yscale *= 3;
		alarm[0] = 2;
	}
	
	flag = false;
	for (i = 0; i < array_length(ufoOthers); i++)
	{
		if (ufoOthers[i] == other)
		{
			flag = true;
		}
	}
	
	if (!flag)
	{
		array_push(ufoOthers, other);
	}
}