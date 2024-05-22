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
else if (room = room2dungeon or room = Theoutside2)
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
else //if room = room5dungeon or room = mountains
{
	bossbar = false

}
/*
if (keyboard_check_pressed(ord("X")) and !tinymenu)
{
	tinymenu = true
	instance_create_layer(60, 328, "instances", oButtonTrigger)
	instance_create_layer(60, 328, "instances", oButtonMenu)
	
	
	
}
if (keyboard_check_pressed(ord("z")))
{
	instance_destroy(oButtonTrigger)
	instance_destroy(oButtonMenu)
	tinymenu = false
	
}
*/

