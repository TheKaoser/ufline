/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();
if (isAttacking)
{
	if (!hasFired && !isDead)
	{
		audio_play_sound(Disparo_1_UFO, 2, false);
		sprite_index = shootSprite;
		image_index = 0;
		
		alarm[0] = 60 * attackSpeed;
		laserInstance = instance_create_layer(x, y, 0, oLaserPawn)
		laserInstance.ufo = id;
		laserInstance.image_xscale = gameManager.scale;
		laserInstance.image_yscale = gameManager.scale;
		if (player == 2)
		{
			laserInstance.image_xscale *= -1;
		}
		laserInstance.laserSpeed *= gameManager.scale;
		hasFired = true;
	}
}