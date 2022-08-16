// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_standing(){
	if(place_meeting(x, y, o_floor))
		{
		while(place_meeting(x, y, o_floor))
			{
			y=y-sign(image_yscale)
			}
		}


	while(collision_rectangle(bbox_left, bbox_bottom-1, bbox_right, bbox_bottom, o_one_way_floor, false, false))
		{
		y=y-1
		}
		

	
	/*
	if(!place_meeting(x, y+1, o_floor) 
	&& !place_meeting(x, y, o_floor)
	&& !place_meeting(x, y+1, o_one_way_floor))
		{
		while(!place_meeting(x, y+1, o_floor))
			{
			y=y+1
			}
		}
	*/
	
}