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







