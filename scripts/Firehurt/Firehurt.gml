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
			Firedeath();
		}
		
	}
}

function Firedeath()
{
	oFire.killfire = true;
}