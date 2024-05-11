/// @description Insert description here
// You can write your code in this editor

xDirection = sign((oPlayer.x - x));
xVector = xDirection * xSpeed;

yDirection = sign((oPlayer.y - y));
yVector = yDirection * ySpeed;

if firebossmove = true
{
	if ((abs(oPlayer.x - x) < 1000) and (abs(oPlayer.y - y) < 1000))
	{
	

		x = x + xVector;

		y = y + yVector;

		//if (place_meeting(x + xVector, y, oWall))
		//{
		//	while(!place_meeting(x + xVector, y, oWall))
		//	{
		//		x = x + xDirection;
		//	}
		
		//	xVector = 0;
		//}
		//x = x + xVector;
		//if (place_meeting(x, y + yVector, oWall))
		//{
		//	while(!place_meeting(x, y + yVector, oWall))
		//	{
		//		y = y + yDirection;
		//	}
		
		//	yVector = 0;
		//}
		//y = y + yVector;

	}
}
if bossfireinvincibility = true
{
	sprite_index = sColdfire
}
else
{
	sprite_index = sFire
}

if (bossfireinvincibility = true)
{
	
	bossfireinvtimer -= 1/room_speed
	if (bossfireinvtimer <= 0)
	{
		bossfireinvincibility = false
		bossfireinvtimer = 3;
		
	}
}
if killfire = true
{
	instance_destroy(self)
}
if killfire = true 
{
	global.killminiboss = true
}
if global.dontrespawnfireminiboss = true
{
	audio_stop_sound(firebossmusic)
	instance_destroy(self)
}
if global.bossfirehp <= 6 
{
	fireparttimer -= 1/room_speed
	if (fireparttimer <= 0)
	{
		fireparttimer = 5
		instance_create_layer(675, 388, "Instances", oFirepartical)
	}
}

if global.bossfirehp <= 9 
{
	firelazertimer -= 1/room_speed
	if (firelazertimer <= 0 )
	{
		spawnfirelazer = true
		
		if spawnfirelazer = true
		{
			firepartactive -= 1/room_speed
			instance_create_layer(675, 388, "Instances", oFireparticalstatic)
			
			if firepartactive <= 0
			{
				firelazertimer = 3
				spawnfirelazer = false
				firepartactive = 1
				
			}
		}
	}
}
if global.bossfirehp <= 5 
{
	firelazertimer -= 1/room_speed
	if (firelazertimer <= 0 )
	{
		spawnfirelazer = true
		
		if spawnfirelazer = true
		{
			firepartactive -= 1/room_speed
			instance_create_layer(675, 388, "Instances", oFireparticalslow)
			
			if firepartactive <= 0
			{
				firelazertimer = 3
				spawnfirelazer = false
				firepartactive = 1
				
			}
		}
	}
}
if global.bossfirehp <= 7
{
	firewalltimer -= 1/room_speed
	if (firewalltimer <= 0)
	{
		firewalltimer = 20
		instance_create_layer(675, 388, "Instances", oFirewall)
	}
}