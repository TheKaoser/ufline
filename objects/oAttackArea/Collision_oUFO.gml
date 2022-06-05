/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (other.player != ufo.player)
{
	ufo.isAttacking = true;
	array_push(other.attackers, ufo);
}