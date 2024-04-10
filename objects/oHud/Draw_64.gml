/// @description Insert description here
// You can write your code in this editor
draw_set_font(fHUD)
draw_set_color(c_white)


draw_text(39, 41, "x " + string(global.coins));
draw_sprite(sCoin, image_index, 20, 45)

draw_sprite_stretched(sFillhealthbar, image_index,39 ,100,
min((global.hp/global.maxHP) * healthbarWidth, healthbarWidth),
healthbarHeight);
draw_sprite(sHealthbarbackground, 0, 39, 100)


draw_text(39,130, string(oPlayer.attacklength))
draw_text(39,150, string(oPlayer.attackcooldown))
if tutorialdialogue = true
{
draw_text(100, 190, "welcome to the attack tutorial")
draw_text(100, 205, "to attack hold down TAB and move in any direction")
draw_text(100, 220, "keep in mind the 2 numbers on the left the top one shows attack length")
draw_text(100, 235, "and the one near the bottom shows the attack cooldown")
draw_text(100, 250, "go hold down tab and attack that fire over there a few times")
}
else if tutorialdialogue = false
{
	draw_flush()
}





