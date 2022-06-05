rowSize = room_height / 6.3;
scale = rowSize * 0.006;

rows = [];
for (i = 0; i < 5; i++)
{
	rows[i] = rowSize / 1.25 + i * rowSize;
}
index1 = 2; index2 = 2;
currentRow1 = rows[index1]; currentRow2 = rows[index2];
startCol = rowSize / 2;
endCol = room_width - startCol;

multiplayer = false;

gameState = 0;
endingGame = false;

lastWinner = 0;

currentScore = 0;
highScore = 0;

totalWins1 = 0;
totalWins2 = 0;

ufoSprites = [oSpritePawn, oSpriteBoomer, oSpriteBigBoy, oSpriteGoliat];
ufoObjects = [oPawn, oBoomer, oBigBoy, oGoliat];
ufoCosts = [1, 2, 3, 4];
currentKind1 = 0;
currentKind2 = 0;

oSpriteManas1 = [];
oSpriteManas2 = [];

for (i = 0; i < instance_number(oSpriteMana); i++)
{
	if (i < 5)
	{
		oSpriteManas1[i] = instance_find(oSpriteMana, i);
	}
	else
	{
		oSpriteManas2[i - 5] = instance_find(oSpriteMana, i);
	}
}

for (i = 4; i >= 0; i--)
{
	oSpriteManas1[i].gameManager = id;
	oSpriteManas2[i].gameManager = id;
	oSpriteManas1[i].visible = false;
	oSpriteManas2[i].visible = false;
}

alphaIncreasing = true;
globalAlpha = 0;
alarm[4] = 60 * 0.05;

operaRed = make_color_rgb(204, 31, 69);

secsForRetry = 0;

alarm[6] = 1;

gml_pragma("PNGCrush");