function scr_init_oneway_collisions_old() {
	just_feet=noone
        
	
		
		
	if(place_meeting(x, y, o_one_way_floor))
	    {
	    if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 
	    instance_place(x, y, o_one_way_floor).bbox_left, instance_place(x, y, o_one_way_floor).bbox_top, 
	    instance_place(x, y, o_one_way_floor).bbox_right, instance_place(x, y, o_one_way_floor).bbox_bottom)!=0)    
	        {
	        whole_body=instance_place(x, y, o_one_way_floor)
	        }
	    else
	        {
	        whole_body=noone
	        }
	    }
	else
	    {
	    whole_body=noone
	    }


	if(vsp>0)
	    {
		if((object_index==o_player_alt && primary_action!=primary_actions.teleport)
		|| object_index!=o_player_alt)
			{
		    var oneway_list
		    oneway_list=instance_place_list_custom(x, y+floor(vsp), o_one_way_floor) 
		    if(ds_exists(oneway_list, ds_type_list))
		        {
		        for(i=0; i<ds_list_size(oneway_list); i++)
		            {
		            if(!rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 
		            oneway_list[| i].bbox_left, oneway_list[| i].bbox_top, 
		            oneway_list[| i].bbox_right, oneway_list[| i].bbox_bottom))
		                {
		                just_feet=oneway_list[| i]
		                }
		            }
		        }
		    if(ds_exists(oneway_list, ds_type_list))
		        { 
		        ds_list_destroy(oneway_list) 
		        } 
		    }
		}

       
	if(vsp==0)
	    {
	    var oneway_list
	    oneway_list=instance_place_list_custom(x, y+1, o_one_way_floor) 
	    if(ds_exists(oneway_list, ds_type_list))
	        {
	        for(i=0; i<ds_list_size(oneway_list); i++)
	            {
	            if(!rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 
	            oneway_list[| i].bbox_left, oneway_list[| i].bbox_top, 
	            oneway_list[| i].bbox_right, oneway_list[| i].bbox_bottom))
	                {
	                just_feet=oneway_list[| i]
	                }
	            }
	        }
	    if(ds_exists(oneway_list, ds_type_list))
	        { 
	        ds_list_destroy(oneway_list) 
	        }
	    }
    
    
	if(vsp<0)
	    {
	    just_feet=noone
	    }  

}
