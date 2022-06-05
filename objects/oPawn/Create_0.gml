/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();
ufoSpeed = 5;
attackArea = instance_create_layer(x, y, 0, oAttackAreaPawn);
attackArea.ufo = id;
attackSpeed = 0.5;
ufoHealth = 6;
damage = 1;
ufoName = "Pawn";
hitSprite = Pawn_hit;
shootSprite = Pawn_shooting;
deathSprite = Pawn_death;
movingSprite = Pawn_moving;
staticSprite = Pawn_static;