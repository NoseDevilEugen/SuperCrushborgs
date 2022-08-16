// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_oneway_collisions_end(){
//тоже для односторонних платформ (но уже не помню что именно оно фиксит)
	
	if((object_index==o_player_alt && primary_action!=primary_actions.teleport)
	|| object_index!=o_player_alt)
		{
		if(just_feet!=noone && vsp>0)
		    {
		    while(!place_meeting(x, y+1, just_feet))
		        {
		        y+=1
		        y=floor(y)
		        }
		    vsp=0
		    col_v=true
		    }   
		}

	var var3=(instance_place(x, y, o_one_way_floor))

	if(var3!=noone)
	    {
	    if(place_meeting(x, y+1, o_one_way_floor) 
	    && rectangle_in_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, var3.bbox_right, var3.bbox_top, var3.bbox_left, var3.bbox_bottom)==0)
	        {
	        oneway_col=false
	        feet_col=true
	        }
	    }
    
	if(var3==noone)
	    {
	    if(place_meeting(x, y+1, o_one_way_floor))
	        {
	        feet_col=true
	        }
	    }    
    
	if(place_meeting(x, y, o_one_way_floor))
	    {
	    oneway_col=true
	    }

}