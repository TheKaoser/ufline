/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
for (i = array_length(attackers) - 1; i >= 0 ; i--)
{
	if (instance_exists(attackers[i]))
	{
		attackers[i].isAttacking = false;
	}
	else
	{
		array_delete (attackers, i, 1);
	}
}