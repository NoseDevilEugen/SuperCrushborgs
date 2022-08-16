function init_zero_jump() {
	// variable jump height
	
	y=floor(vsp)+y
	add_hsp=0
	add_vsp=0

	if(state==states.grounded 
	&& ow_p==true
	&& state!=states.dead
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& key_down && key_jump
	&& can_fall==true
	&& !place_meeting(x, y+1, o_floor))
	    {
	    //image_index=0
		hsp=0
	    state=states.airborne
	    image_index=0
		ow_p=false
		vsp=0
	    primary_action=primary_actions.fall
		jt_timer=12
		y=y+1
	    }
        
	y=floor(y)
}
