// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_simple_collisions(){
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=0
		}
	x=x+floor(hsp)
	x=floor(x)
	
	if(place_meeting(x, y+vsp, o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		vsp=0
		}
	y=y+floor(vsp)
	y=floor(y)
	
}