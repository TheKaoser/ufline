/// @description Insert description here
// You can write your code in this editor
if (isDead && !isIndestructible && sprite_index == deathSprite)
{
	instance_destroy(id);
}

if (!isAttacking)
{
	sprite_index = movingSprite;
}
else
{
	sprite_index = staticSprite;
}