/// @description Insert description here
// You can write your code in this editor
if(!global.isTransitioning)
{
	global.isTransitioning = true
	
	global.enterDown = true
	if (room = room3dungeon)
	{
		room_goto(room2dungeon)
	}
	if (room = room2dungeon)
	{
		room_goto(room4dungeon)
		
	}
	if (room = room4dungeon)
	{
		room_goto(room6dungeon)
	}
	if (room = room7dungeon)
	{
		room_goto(room5dungeon)
	}
		if (room = thehouse)
	{
		room_goto(Theoutside1)
	}
			if (room = room1dungeon)
	{
		room_goto(Theoutside2)
	}
}





