global.room = room7dungeon;

if (global.enterLeft)
{
	oPlayer.y = oDoorRight.y;
	oPlayer.x = (oDoorRight.x - oPlayer.sprite_width);
}
else if (global.enterRight)
{
	oPlayer.y = oDoorLeft.y;
	oPlayer.x = (oDoorLeft.x + oPlayer.sprite_width);
}
else if (global.enterDown)
{
	oPlayer.x = oDoorUp.x;
	oPlayer.y = (oDoorUp.y + (oPlayer.sprite_height));
	audio_play_sound(dungeonambience, 5, true)
	audio_stop_sound(mountainwind2)
	audio_stop_sound(mountainwind3)
}
else if (global.enterUp)
{
	oPlayer.x = oDoorDown.x;
	oPlayer.y = (oDoorDown.y - (oPlayer.sprite_height));
}

else 
{
	oPlayer.x = 734;
	oPlayer.y = 385;
}