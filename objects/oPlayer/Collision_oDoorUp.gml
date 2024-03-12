/// @description Insert description here
// You can write your code in this editor
if(!global.isTransitioning)
{
	global.isTransitioning = true
	
	global.enterUp = true
	if (room = room2dungeon)
	{
		room_goto(room3dungeon)
	}
	if (room = room4dungeon)
	{
		room_goto(room2dungeon)
	}
	if (room = room6dungeon)
	{
		room_goto(room4dungeon)
	}
	if (room = room5dungeon)
	{
		room_goto(room7dungeon)
	}
		if (room = Theoutside1)
	{
		room_goto(thehouse)
	}
		if (room = Theoutside2)
	{
		room_goto(room1dungeon)
	}
}





