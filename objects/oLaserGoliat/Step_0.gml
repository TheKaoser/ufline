/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(ufo))
{
	if (!is_undefined(ufoAttacking) && instance_exists(ufoAttacking))
	{
		move_towards_point(ufoAttacking.x, ufoAttacking.y, laserSpeed);
	}
	else
	{
		instance_destroy(id);
	}
}
else 
{
	instance_destroy(id);
}