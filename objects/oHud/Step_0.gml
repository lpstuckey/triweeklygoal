/// @description Insert description here
// You can write your code in this editor
if (global.isTransitioning)
{
	global.transitionTimer -= 1/room_speed;
	if (global.transitionTimer <= 0)
	{
		global.isTransitioning = false;
		global.transitionTimer = 1;
		global.enterRight = false;
		global.enterLeft = false;
		global.enterDown = false;
		global.enterUp = false;
	}
}

if (global.hp > 100)
{
	global.hp = 100;
}

if (room = room1dungeon)
{
	tutorialdialogue = true
}
else if (room = room2dungeon or Theoutside2)
{
	tutorialdialogue = false
}
if global.killminiboss = true
{
	global.dontrespawnfireminiboss = true	
}

if (room = room7dungeon)
{
	bossbar = true
}
else if (room = room5dungeo+n or mountains)
{
	bossbar = false
}