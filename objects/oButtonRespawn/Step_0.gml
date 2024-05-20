/// @description Insert description here
// You can write your code in this editor
if (!shaded and keyboard_check_pressed(vk_enter))
{
	instance_create_layer(0, 0, "instances", oHud)
	room_goto(thehouse);

	
}