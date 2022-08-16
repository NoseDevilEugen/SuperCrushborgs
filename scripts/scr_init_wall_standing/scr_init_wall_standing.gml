// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_wall_standing(){
	if(place_meeting(x, y, o_floor))
		{
		while(place_meeting(x, y, o_floor))
			{
			x=x+sign(image_xscale)
			}
		}
	
}