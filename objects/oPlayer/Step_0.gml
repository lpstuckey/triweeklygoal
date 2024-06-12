/// @description Insert description here
// You can write your code in this editor



if (!falling )
{
	rightKey = keyboard_check(vk_right);
	if (rightKey && !attack)
	{
		sprite_index = sPlayerright
	}
	leftKey = keyboard_check(vk_left);
	if (leftKey && !attack)
	{
		sprite_index = sPlayerleft
	}
	upKey = keyboard_check(vk_up);
	if (upKey && !attack)
	{
		sprite_index = sPlayerup
	}
	downKey = keyboard_check(vk_down);
	if (downKey && !attack)
	{
		sprite_index = sPlayerdown
	}
	attackKey = keyboard_check(vk_tab);
	
	xspd = (rightKey - leftKey) * moveSpd;
	yspd = (downKey - upKey) * moveSpd;


	if place_meeting(x + xspd, y, oCollision)
	{
		xspd = 0;
	}
	if place_meeting(x, y + yspd, oCollision)
	{
		yspd = 0;
	}
	if place_meeting(x + xspd, y, snowytree)
	{
		xspd = 0;
	}
	if place_meeting(x, y + yspd, snowytree)
	{
		yspd = 0;
	}	
	if place_meeting(x + xspd, y, oWall)
	{
		xspd = 0;
	}
	if place_meeting(x, y + yspd, oWall)
	{
		yspd = 0;
	}

	x += xspd;
	y += yspd;

	if (isInvincible)
	{
		invTimer -= 1/room_speed;
		if (flashAlpha > 0)
		{
			flashAlpha -= 0.1;
		
		}
		if (flashAlpha <=0)
		{
			flashAlpha = 1;
		}
		if (invTimer = 1.9)
		{
			
			audio_play_sound(damage, 1, false)
		}
		if (invTimer <= 0)
		{
			isInvincible = false
			invTimer = 2;
			flashAlpha = 0;
		}
	}
	if (karma)
	{
		karmatimer -= 4/room_speed;
		if (flashAlpha > 0)
		{
			flashAlpha -= 0.1;
		
		}
		if (flashAlpha <=0)
		{
			flashAlpha = 1;
		}
		if (karmatimer <= 0)
		{
			audio_play_sound(damage, 1, false)
		}
		if (karmatimer <= 0)
		{
			karma = false
			karmatimer = 1;
			flashAlpha = 0;
		}
	}
	
	if keyboard_check_pressed(vk_tab) && !audio_is_playing(enemyhit)
	{
		
		audio_play_sound(enemyhit, 5, false)
	}
	if (!attackready)
	{
		attackcooldown -= 1/room_speed
		if attackcooldown <= 0 
		{
			attackready = true
			attackcooldown = 0.45
		}
	}
	if (audio_is_playing(enemyhit) && attackready)
	{
		
		attackarmed = true
		
		
		
	}

	else
	{
		attackarmed = false;	
	}

	if (attackarmed && downKey)
	{
		sprite_index = sPlayerDownslice;
		attack = true;
		attacklength -= 1/room_speed
		if (attacklength <= 0)
		{
			attackready = false;
			attacklength = 0.45;
			audio_stop_sound(enemyhit)
			sprite_index = sPlayerdown
		}
	}
	else if (attackarmed && upKey)
	{
		sprite_index = sPlayerUpslice;
		attack = true;
		attacklength -= 1/room_speed
		if (attacklength <= 0)
		{
			attackready = false;
			attacklength = 0.45;
			audio_stop_sound(enemyhit)
			sprite_index = sPlayerup
		}
	}
	else if (attackarmed && leftKey)
	{
		sprite_index = sPlayerleftslice;
		attack = true;
		attacklength -= 1/room_speed
		if (attacklength <= 0)
		{
			attackready = false;
			attacklength = 0.45;
			audio_stop_sound(enemyhit)
			sprite_index = sPlayerleft
			//attack = false;
		}
	}
	else if (attackarmed && rightKey)
	{
		sprite_index = sPlayerRightSlice;

		attack = true;
		attacklength -= 1/room_speed
		if (attacklength <= 0)
		{
			attackready = false;
			attacklength = 0.45;
			audio_stop_sound(enemyhit)
			sprite_index = sPlayerright
		}
	}
	else
	{
	
		
		attack = false;
		sprite_index = sPlayerright
		
	}

	

}



if waterfallhappened = true
{
	waterfallhappening = false
}
