/// @description Insert description here
// You can write your code in this editor
if (room = MainMenu)
{
	if (keyboard_check_pressed(vk_down) and (button < 2))
	{
		button += 1;
	}
	if (keyboard_check_pressed(vk_up) and (button > 1))
	{
		button -= 1;
	}
	if (button == 1)
	{
		oButtonStart.flashAlpha = 0;
		oButtonStart.shaded = false;
		oButtonCredits.flashAlpha = 0.5;
		oButtonCredits.shaded = true;
	
	}
	if (button == 2)
	{
		oButtonStart.flashAlpha = 0.5;
		oButtonStart.shaded = true;
		oButtonCredits.flashAlpha = 0;
		oButtonCredits.shaded = false;
	
	}
}
else if (room = deathscreen)
{
	if (keyboard_check_pressed(vk_right) and (button < 2))
	{
		button += 1;
	}
	if (keyboard_check_pressed(vk_left) and (button > 1))
	{
		button -= 1;
	}
	if (button == 1)
	{
		oButtonRespawn.flashAlpha = 0;
		oButtonRespawn.shaded = false;
		oButtonMenu.flashAlpha = 0.5;
		oButtonMenu.shaded = true;
	
	}
	if (button == 2)
	{
		oButtonRespawn.flashAlpha = 0.5;
		oButtonRespawn.shaded = true;
		oButtonMenu.flashAlpha = 0;
		oButtonMenu.shaded = false;
	
	}
}
else if (room = credits)
{
		oButtonMenu.flashAlpha = 0;
		oButtonMenu.shaded = false;
}
