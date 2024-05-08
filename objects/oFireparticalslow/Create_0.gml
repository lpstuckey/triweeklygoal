/// @description Insert description here
// You can write your code in this editor
xDirection = 0;
xSpeed = 2;
xVector = 0;
yDirection = 0;
ySpeed = 2;
yVector = 0;
firechangedirtimer = 3
	xDirection = sign((oPlayer.x - x));
	xVector = xDirection * xSpeed;

	yDirection = sign((oPlayer.y - y));
	yVector = yDirection * ySpeed;


despawntimer = 2
despawn = false



