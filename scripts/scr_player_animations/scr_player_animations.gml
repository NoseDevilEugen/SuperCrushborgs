function scr_player_animations() {
	if(move!=0 && state!=states.wallcling)
	    {
	    image_xscale=move
	    }

	if(move!=0 && state!=states.wallcling)
		{
		image_xscale=sign(move)
		}
	image_yscale=1
    
	/*
	if(sprite_index==s_array[primary_actions.jump]
	&& primary_action!=primary_actions.fall)
		{
		mask_index=s_panthebot_idle
		camera_y=y+14
		while(place_meeting(x, y, o_floor))
			{
			y=y-1
			}
		if(ow_p==true)
			{
			while(place_meeting(x, y, o_one_way_floor))
				{
				y=y-1
				}
			}
		}
	
	if(camera_y>y)
		{
		camera_y=camera_y-1
		}
	*/
	sprite_index=s_array[primary_action] 
	
	mask_index=sprite_index
	
}
