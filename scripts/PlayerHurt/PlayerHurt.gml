// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHurt()
{
	if (!oPlayer.isInvincible)
	{
		oPlayer.isInvincible = true;
		global.hp -=10;
		flashAlpha = 1;
		if (global.hp < 1)
		{
			audio_play_sound(sound_playerdeath, 1, false)
			PlayerDeath();
		}
	}
}

function Playerkilled()
{	
	if (!oPlayer.isInvincible)
	{
		oPlayer.isInvincible = true;
		global.hp -= 100;
		if (global.hp < 1)
		{
			PlayerDeath();
		}
	}
}

function PlayerDeath()
{
	

	

	instance_destroy(oHud)
	room_goto(Room1);
	instance_create_layer(0, 0, "instances", oHud)

}


