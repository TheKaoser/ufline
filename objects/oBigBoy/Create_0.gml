/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();
ufoSpeed = 2.5;
attackArea = instance_create_layer(x, y, 0, oAttackAreaBigBoy);
attackArea.ufo = id;
ufoHealth = 18;
attackSpeed = 1;
ufoName = "BigBoy";
hitSprite = BigBoy_hit;
deathSprite = BigBoy_death;
movingSprite = BigBoy_moving;
staticSprite = BigBoy_static;