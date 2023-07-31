//Calculate Movement
hspd = lengthdir_x(movespd,moveAngle)
vspd = lengthdir_y(movespd,moveAngle)

//if player is in a radius go to player and set last known position
if collision_circle(x, y, BAT_ALERT_RADIUS, oPlayer, false, false)
{
	reachedLastPos = false;
	playerLastX = oPlayer.x;
	playerLastY = oPlayer.y;
	mp_potential_step(oPlayer.x ,oPlayer.y, movespd, false)
}
else //if not in radius go in a random direction (choose a new angle if hit a wall)
{
	//goto last known position of the player
	if reachedLastPos = false && x != playerLastX && y != playerLastY
	{
		mp_potential_step(playerLastX, playerLastY, movespd, false)
		if x == playerLastX && y == playerLastY
		{
			reachedLastPos = true
		}
	}
	else
	{
		if (place_meeting(x+hspd,y,oCollidier))
		{
			while (!place_meeting(x+sign(hspd),y,oCollidier))
			{
				x += sign(hspd);
			}
			hspd = 0;
			moveAngle += irandom_range(90, 270)
		}

		if (place_meeting(x,y+vspd,oCollidier))
		{
			while (!place_meeting(x,y+sign(vspd),oCollidier))
			{
				y += sign(vspd);
			}
			vspd = 0;
			moveAngle += irandom_range(90, 270)
		}
	}

	x += hspd 
	y += vspd 
}

