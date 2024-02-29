/// @description Insert description here
// You can write your code in this editor
if (!isInvincible && !attack)
{
	PlayerHurt();
}
else if (attack && !other.fireinvincibility)
{
	Firehurt();
}



