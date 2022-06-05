/// @description Insert description here
// You can write your code in this editor
if (alphaIncreasing)
{
	image_alpha += lifeTime;
	if (image_alpha > 0.9)
	{
		alphaIncreasing = false;
	}
}
else
{
	image_alpha -= lifeTime;
	if (image_alpha < 0.1)
	{
		instance_destroy(id);
	}
}

move_towards_point(room_width / 2, room_height / 2, -10);