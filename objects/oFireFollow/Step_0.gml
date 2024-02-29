/// @description Insert description here
// You can write your code in this editor

xDirection = sign((oPlayer.x - x));
xVector = xDirection * xSpeed;

yDirection = sign((oPlayer.y - y));
yVector = yDirection * ySpeed;


if ((abs(oPlayer.x - x) < 1000) and (abs(oPlayer.y - y) < 1000))
{
	
	if (place_meeting(x + xVector, y, oCollision))
	{
		while(!place_meeting(x + xVector, y, oCollision))
		{
			x = x + xDirection;
		}
		
		xVector = 0;
	}
	x = x + xVector;
	if (place_meeting(x, y + yVector, oCollision))
	{
		while(!place_meeting(x, y + yVector, oCollision))
		{
			y = y + yDirection;
		}
		
		yVector = 0;
	}
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

