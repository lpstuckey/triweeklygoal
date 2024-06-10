/// @description Insert description here
// You can write your code in this editor
if (!isInvincible && !audio_is_playing(enemyhit))
{
	PlayerHurt();
}
else if (audio_is_playing(enemyhit) && !other.fireinvincibility)
{
	Firehurt();
}



