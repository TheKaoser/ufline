/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();
ufoSpeed = 4;
attackArea = instance_create_layer(x, y, 0, oAttackAreaGoliat);
attackArea.ufo = id;
attackSpeed = 1.5;
ufoHealth = 10;
damage = 6;
ufoAttacking = undefined;
ufoName = "Goliat";
hitSprite = Goliat_hit;
shootSprite = Goliat_shooting;
deathSprite = Goliat_death;
movingSprite = Goliat_moving;
staticSprite = Goliat_static;
shootingPoint = 45;