function scr_init_vertical_collisions() {
	//vertical collision
	if(place_meeting(x, y+floor(vsp), o_floor))
	    {
		//var platform=instance_place(x, y-1, o_floor_moving_ver)
	    //enemy_state=enemy_states.grounded
	    while(!place_meeting(x, y+sign(vsp), o_floor))
	        {
	        y+=sign(vsp)
			
	        y=floor(y)
	        }
			
		
		
		
		col_v=true

	    vsp=0
		
		
		if(id.object_index==o_player_alt)
			{
			if(primary_action==primary_actions.teleport)
				{
				hsp=0
				}
			}
			
			
			
		/*
		if(instance_exists(platform))
			{
			if(platform.vsp>0)
				{
				vsp=1
				}
			}
		*/
		
	    }


		
}
