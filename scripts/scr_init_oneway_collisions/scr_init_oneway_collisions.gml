function scr_init_oneway_collisions() {
	
	ow_p=false
	col_v=false
	
	var ow_p_under=collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+floor(vsp), o_one_way_floor, true, false)
	

	//jt_timer=0
	
	if(object_index==o_player_alt)
		{
		if(vsp>0 && primary_action!=primary_actions.teleport && jt_timer<=0)
			{
			if(ow_p_under)
				{
				if(instance_place(x, y, o_one_way_floor)!=ow_p_under
				&& !place_meeting(x, y, ow_p_under))
					{
					while(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+sign(vsp), o_one_way_floor, true, false)==noone)
						{
						y=y+sign(vsp)
						y=floor(y)
						}
					col_v=true
					ow_p=true
					vsp=0
					}
				}
			}
	
		if(vsp==0 && primary_action!=primary_actions.teleport && jt_timer<=0)
			{
			if(instance_place(x, y, o_one_way_floor)
			!=collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false)
			&& collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false)!=noone
			&& state==states.grounded)
				{
				col_v=true
				ow_p=true
				vsp=0
				}
			}
		}
	else if(object_index==o_player)
		{
		if(vsp>0 && jt_timer<=0)
			{
			if(ow_p_under)
				{
				if(instance_place(x, y, o_one_way_floor)!=ow_p_under
				&& !place_meeting(x, y, ow_p_under))
					{
					while(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+sign(vsp), o_one_way_floor, true, false)==noone)
						{
						y=y+sign(vsp)
						y=floor(y)
						}
					col_v=true
					ow_p=true
					vsp=0
					}
				}
			}
	
		if(vsp==0 && jt_timer<=0)
			{
			if(instance_place(x, y, o_one_way_floor)
			!=collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false)
			&& collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false)!=noone
			&& state==states.grounded)
				{
				col_v=true
				ow_p=true
				vsp=0
				}
			}
		}
	else
		{
		
		if(vsp>0)
			{
			if(ow_p_under)
				{
				if(instance_place(x, y, o_one_way_floor)!=ow_p_under
				&& !place_meeting(x, y, ow_p_under))
					{
					while(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+sign(vsp), o_one_way_floor, true, false)==noone)
						{
						y=y+sign(vsp)
						y=floor(y)
						}
					col_v=true
					ow_p=true
					vsp=0
					}
				}
			}
	
		if(vsp==0)
			{
			if(instance_place(x, y, o_one_way_floor)
			!=collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false)
			&& collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false)!=noone
			&& state==states.grounded)
				{
				col_v=true
				ow_p=true
				vsp=0
				}
			}
		}
		
}
