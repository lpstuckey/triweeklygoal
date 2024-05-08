/// @description Insert description here
// You can write your code in this editor
if (!falling)
{
	rightKey = keyboard_check(vk_right);
	leftKey = keyboard_check(vk_left);
	upKey = keyboard_check(vk_up);
	downKey = keyboard_check(vk_down);
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
			audio_play_sound(sound_invincibility, 1, false)
		}
		if (invTimer <= 0)
		{
			isInvincible = false
			invTimer = 2;
			flashAlpha = 0;
		}
	}
	if (!attackready)
	{
		attackcooldown -= 1/room_speed
		if attackcooldown <= 0 
		{
			attackready = true
			attackcooldown = 2
		}
	}
	if (attackKey && attackready)
	{
		attackarmed = true;

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
			attacklength = 1;
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
			attacklength = 1;
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
			attacklength = 1;
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
			attacklength = 1;
		}
	}
	else
	{
	
		sprite_index = sPlayer;
		attack = false;
	}
}
if attack = true
{
	audio_play_sound(sound_attack, 1, false)
}
if waterfallhappened = true
{
	waterfallhappening = false
}
