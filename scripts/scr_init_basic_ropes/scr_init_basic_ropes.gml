function scr_init_basic_ropes() {
  	//ropes mechanics	 
	var rope = instance_place(x, y, o_rope)	 
	 
	if(vsp>=0 
	&& rope!=noone
	&& !place_meeting(x, y, o_rope_angle)
	&& primary_action!=primary_actions.knockback
	&& state!=states.grounded
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport)
		{
		if(rope.bbox_bottom+rope.vsp-id.bbox_top<floor(vsp))
			{
			while(rope.bbox_bottom!=id.bbox_top)
				{
				y+=1
				y=floor(y)
				}
			vsp=0
			}
		if(rope.bbox_bottom==bbox_top)
			{
			y=y+1
			//vsp=0
			ceiling_obj=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, true, false)
			ceiling_block=false
			if(ceiling_obj!=noone)
				{
				ceiling_rope=true
				}
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		}

	
	//slope ropes
	//ropes mechanics	 

	var slope_rope=noone

	slope_rope = instance_place(x, y, o_rope_angle)	 
	 
	if(vsp>=0 
	&& slope_rope!=noone
	&& ceiling_rope==false
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport)
		{
		if(!collision_rectangle(bbox_left, bbox_top+floor(vsp), bbox_right, bbox_bottom+floor(vsp), o_rope_angle, true, false))
			{
			while(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, o_rope_angle, true, false))
				{
				//x=x-hsp
				y+=1
				y=floor(y)
				}		
			//hsp=0
			vsp=0
			ceiling_obj=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope_angle, true, false)
			ceiling_block=false
			if(ceiling_obj!=noone)
				{
				ceiling_rope=true
				}
			ceiling_rope_angle=true
			//show_message("вот тут")
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		}
	
	
	if(vsp>0
	&& !place_meeting(x, y, o_rope_angle)
	&& collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope_angle, true, false)
	&& ceiling_rope==false
	&& state!=states.wallcling
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport)
		{
		vsp=0
		ceiling_obj=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope_angle, true, false)
		ceiling_block=false
		if(ceiling_obj!=noone)
			{
			ceiling_rope=true
			}
		ceiling_rope_angle=false
			//show_message("вот тут")
		state=states.ceiling
		primary_action=primary_actions.ceiling
		}
}
