#region movement & wall collisions
//Player Input
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

//Calculate Movement
var hMove = keyRight - keyLeft;
var vMove = keyDown - keyUp;

hspd = hMove * movespd
vspd = vMove * movespd

//Collision Checks
if (place_meeting(x+hspd,y,oCollidier))
{
	while (!place_meeting(x+sign(hspd),y,oCollidier))
	{
		x += sign(hspd);
	}
	hspd = 0;
}

if (place_meeting(x,y+vspd,oCollidier))
{
	while (!place_meeting(x,y+sign(vspd),oCollidier))
	{
		y += sign(vspd);
	}
	vspd = 0;
}

x += hspd 
y += vspd 
#endregion