/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();
//ufoSpeed = 2;
ufoSpeed = 12;
attackArea = instance_create_layer(x, y, 0, oAttackAreaBoomer);
attackArea.ufo = id;
attackSpeed = 1;
ufoHealth = 4;
damage = 10;
acceleration = 1.025;
ufoName = "Boomer";
hitSprite = Boomer_hit;
deathSprite = Boomer_death;
movingSprite = Boomer_moving;
staticSprite = Boomer_static;