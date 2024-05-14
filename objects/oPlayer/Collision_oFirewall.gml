/// @description Insert description here
// You can write your code in this editor
if (!oPlayer.karma)
{
	oPlayer.karma = true;
	global.hp -=1;
	flashAlpha = 1;
	if (global.hp < 1)
	{
		audio_play_sound(sound_playerdeath, 1, false)
		PlayerDeath();
	}
}





