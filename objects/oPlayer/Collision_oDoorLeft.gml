/// @description Insert description here
// You can write your code in this editor
if(!global.isTransitioning)
{
	global.isTransitioning = true
	
	global.enterLeft = true	
	if (room = room1dungeon)
	{
		room_goto(room2dungeon)
	}
	if (room = Theoutside2)
	{
		room_goto(Theoutside1)
	}
}



