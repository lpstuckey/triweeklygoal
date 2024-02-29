/// @description Insert description here

// You can write your code in this editor
if fireinvincibility = true
{
	sprite_index = sColdfire
}
else
{
	sprite_index = sFire
}

if (fireinvincibility = true)
{
	fireinvtimer -= 1/room_speed
	if (fireinvtimer <= 0)
	{
		fireinvincibility = false
		fireinvtimer = 3;
		
	}
}
if (killfire)
{
	instance_destroy(self)
}




