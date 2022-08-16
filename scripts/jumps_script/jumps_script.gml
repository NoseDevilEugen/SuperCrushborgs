function jumps_script() {
	//jumps
	//double jump


	//jumps and walljumps implementation
    
	if((key_jump && !key_down) 
	&& (state==states.grounded)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.teleport_end
	&& primary_action!=primary_actions.cutscene
	&& !collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom-1, o_floor, true, false))
		{
		ow_p=false
		vsp = -jumpspeed
		}
		
	if(state==states.grounded 
	&& state!=states.dead
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& key_down && key_jump
	&& place_meeting(x, y+1, o_floor))
	    {
	    //image_index=0
		ow_p=false
		vsp = -jumpspeed
	    }
     
}
