/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();
if (isAttacking)
{
	if (!hasFired && !isDead)
	{
		audio_play_sound(Disparo_2_UFO, 2, false);
		sprite_index = shootSprite;
		image_index = 0;
		
		alarm[0] = 60 * attackSpeed + random_range(5, 5);
		if (player == 2)
		{
			shootingPoint = -abs(shootingPoint);
		}
		laserInstance = instance_create_layer(x + shootingPoint, y, 0, oLaserGoliat);
		laserInstance.ufo = id;
		laserInstance.image_xscale = gameManager.scale;
		laserInstance.image_yscale = gameManager.scale;
		if (player == 2)
		{
			laserInstance.image_xscale *= -1;
		}
		laserInstance.laserSpeed *= gameManager.scale;
		laserInstance.ufoAttacking = ufoAttacking;
		hasFired = true;
	}
}

if (!is_undefined(ufoAttacking) && (player == 1 && ufoAttacking.x < x || player == 2 && ufoAttacking.x > x))
{
	ufoAttacking = undefined;
	isAttacking = false;
}