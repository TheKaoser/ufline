// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeDirection()
{

}

function ChangeUFO()
{
	
}

function DoAction(gameManager, mana, currentKind, index, instanceCol, player, spriteManas)
{
	if (gameManager.gameState == 1)
	{
		if (mana >= gameManager.ufoCosts[currentKind])
		{
			audio_play_sound(Lanzar_1_UFO_wars, 2, false);
			alarm[1] = 60;
			ufo = instance_create_layer(instanceCol, gameManager.rows[index], 0, gameManager.ufoObjects[currentKind]);
			ufo.image_xscale = gameManager.scale;
			ufo.image_yscale = gameManager.scale;
			ufo.image_xscale *= player;
			ufo.player = player;
			ufo.attackArea.image_xscale = gameManager.scale;
			ufo.attackArea.image_yscale = gameManager.scale;
			if (player == 2)
			{
				ufo.attackArea.image_xscale *= -1;
			}
			ufo.ufoSpeed *= gameManager.scale;
			ufo.gameManager = gameManager;
			mana -= gameManager.ufoCosts[currentKind];
	
			for (i = 3; i >= mana; i--)
			{
				spriteManas[i].visible = false;
			}
		}
	}
	else
	{
		if (gameManager.gameState == 2 && gameManager.secsForRetry == 0)
		{
			StartGame(id);
		}
	}
}