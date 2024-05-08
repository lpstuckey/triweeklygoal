/// @description Insert description here
// You can write your code in this editor



  

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
if despawn = true
{ 
	despawntimer -= 1/room_speed
	if despawntimer <= 0
	{
		instance_destroy(self)
	}
}