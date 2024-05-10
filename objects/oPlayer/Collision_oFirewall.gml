/// @description Insert description here
// You can write your code in this editor
if (!oPlayer.isInvincible)
{
	oPlayer.isInvincible = true;
	global.hp -=20;
	flashAlpha = 1;
	if (global.hp < 1)
	{
		audio_play_sound(sound_playerdeath, 1, false)
		PlayerDeath();
	}
}





