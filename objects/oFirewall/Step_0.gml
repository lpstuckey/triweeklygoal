/// @description Insert description here
// You can write your code in this editor

if despawn = true
{ 
	despawntimer -= 1/room_speed
	if despawntimer <= 0
	{
		audio_stop_sound(firebeam)
		instance_destroy(self)
	}
}






