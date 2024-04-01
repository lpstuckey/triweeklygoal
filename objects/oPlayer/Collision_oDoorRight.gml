/// @description Insert description here
// You can write your code in this editor
if(!global.isTransitioning)
{
	global.isTransitioning = true
	
	global.enterRight = true
	if (room = room2dungeon)
	{
		room_goto(room1dungeon)
	}
	if (room = room5dungeon)
	{
		room_goto(room4dungeon)
	}
	if (room = Theoutside1)
	{
		room_goto(Theoutside2)
	}
	if (room = mountains1)
	{
		room_goto(mountains)
	}
}







