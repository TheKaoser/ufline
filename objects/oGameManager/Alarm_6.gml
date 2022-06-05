/// @description Background stars
xPosition = irandom_range(0, room_width);
yPosition = irandom_range(0, room_height);

size = random_range(0.1, 0.4);

nextStar = irandom_range(1, 5);

newStar = instance_create_layer(xPosition, yPosition, 0, oSpriteStar);
newStar.image_xscale *= size;
newStar.image_yscale *= size;

alarm[6] = nextStar;