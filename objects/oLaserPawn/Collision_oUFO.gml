/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(ufo) && other.player != ufo.player)
{
	if (other.ufoHealth > ufo.damage)
	{
		other.ufoHealth -= ufo.damage;
		other.sprite_index = other.hitSprite;
		other.image_index = 0;
	}
	else if (!other.isDead)
	{
		ufo.isAttacking = false;
		instance_destroy(other.attackArea);
		other.isDead = true;
	}
	instance_destroy(id);
}