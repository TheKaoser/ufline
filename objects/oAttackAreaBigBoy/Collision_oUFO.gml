if (other.player != ufo.player && other.ufoName != "Boomer")
{
	instance_destroy(other.attackArea);
	other.isDead = true;
	ufo.sprite_index = BigBoy_shooting;
	ufo.image_index = 0;
	
	if (other.ufoName == "BigBoy")
	{
		instance_destroy(ufo.attackArea);
		ufo.isDead = true;
	}
}