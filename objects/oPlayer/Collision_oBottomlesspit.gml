/// @description Insert description here
// You can write your code in this editor
falling  = true
sprite_index = sPlayerfall
cutscene_timer -= 1/room_speed
if (cutscene_timer = 4)
{
	audio_play_sound(sound_playerdeath, 1, false)
}
if (cutscene_timer <= 0)
{
	
	Playerkilled()
	falling = false
	
}


