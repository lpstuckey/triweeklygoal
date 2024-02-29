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

