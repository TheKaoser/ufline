/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(ufo) && other.player != ufo.player)
{
	if (other.ufoHealth > ufo.damage)
	{
		other.ufoHealth -= ufo.damage;
		if (other.ufoName == "Pawn" && !other.isAttacking)
		{
			other.sprite_index = Pawn_hit_moving;
		}
		else
		{
			other.sprite_index = other.hitSprite;
			other.image_index = 0;
		}
	}
	else
	{
		ufo.isAttacking = false;
		instance_destroy(other.attackArea);
		other.isDead = true;
	}
	instance_destroy(id);
}