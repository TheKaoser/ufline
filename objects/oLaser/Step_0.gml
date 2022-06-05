/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(ufo))
{
	x = ufo.player == 1 ? x + laserSpeed : x - laserSpeed;
}
else 
{
	instance_destroy(id);
}