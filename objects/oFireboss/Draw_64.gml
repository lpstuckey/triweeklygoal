/// @description Insert description here
// You can write your code in this editor
//draw_self()
if (oHud.bossbar == true & !global.dontrespawnfireminiboss)
{
	draw_sprite_stretched(sFillbossbar, image_index,500,100,
	min((global.bossfirehp/global.maxbossHP) * oHud.bossbarwidth, oHud.bossbarwidth),
	oHud.bossbarheight);
	draw_sprite(sBossbarbackground, 0, 500, 100)
	draw_text(610, 80, "Eternal Flame")
}
else if (oHud.bossbar == false)
{
	draw_flush()
}