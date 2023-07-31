draw_self()

if direction >= 270 || direction <= 90
{
	image_xscale = -1
}
else
{
	image_xscale = 1
}

if keyboard_check(vk_tab)
{
	draw_circle(x, y, BAT_ALERT_RADIUS, true)
	draw_text(x,y-16,string(reachedLastPos))
	//draw_text(x,y-8,string(playerLastX))
	//draw_text(x,y,string(playerLastY))
}