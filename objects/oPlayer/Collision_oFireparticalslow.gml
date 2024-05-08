/// @description Insert description here
// You can write your code in this editor
if (!oPlayer.isInvincible)
	{
		oPlayer.isInvincible = true;
		global.hp -=5;
		flashAlpha = 1;
	}
if global.hp <= 0
{
	PlayerDeath()
}







