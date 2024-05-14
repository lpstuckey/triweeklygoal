// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Firehurt()
{
	if (attack)
	{
		oFire.fireinvincibility = true
		oPlayer.attack = false;
		oPlayer.attackcooldown -= 1/room_speed
		oFire.firehp -= 1;
	
		if (oFire.firehp <= 0)
		{
			FireDeath();
		}
		
		
		
	}
}
function firebosshurt()
{
	if(attack)
	{
		oFireboss.bossfireinvincibility = true
		oPlayer.attack = false;
		oPlayer.attackcooldown -= 1/room_speed
		global.bossfirehp -= 1;
		if (global.bossfirehp <= 0)
		{
			Firebossdeath();
		}
	}
	
	
}
function FireDeath()
{
	oFire.killfire = true;
}
function Firebossdeath()
{

	oHud.bossbar = false;
	oFireboss.killfire = true;
}
