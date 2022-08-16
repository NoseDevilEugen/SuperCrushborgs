// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_additional_rope(){
	var slope_rope=noone	
	
	if(!place_meeting(x, y, o_rope))
		{
		slope_rope = instance_place(x, y, o_rope_angle)	 
		}
	 
	if(vsp>0 
	&& slope_rope!=noone)
		{
		if(!collision_rectangle(bbox_left+floor(hsp), bbox_top, bbox_right+floor(hsp), bbox_bottom, o_rope_angle, true, false)
		&& y>slope_rope.y)
			{
			hsp_final=0		
			}
		}
}