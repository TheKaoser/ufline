/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

for (i = array_length(ufoOthers) - 1; i >= 0; i--)
{
	if (ufoOthers[i].ufoHealth > ufo.damage)
	{
		ufoOthers[i].ufoHealth -= ufo.damage;
	}
	else if (!ufoOthers[i].isDead)
	{
		instance_destroy(ufoOthers[i].attackArea);
		ufoOthers[i].isDead = true;
	}
}

audio_play_sound(Kamikaze_UFO, 2, false);
ufo.sprite_index = Boomer_shooting;
ufo.image_index = 0;
ufo.isAttacking = true;
instance_destroy(ufo.attackArea);