function scr_init_vertical_collisions() {
	//vertical collision
	if(place_meeting(x, y+floor(vsp), o_floor))
	    {
	    //enemy_state=enemy_states.grounded
	    while(!place_meeting(x, y+sign(vsp), o_floor))
	        {
	        y+=sign(vsp)
	        y=floor(y)
	        }
		if(id.object_index==o_player_alt)
			{
			if(primary_action==primary_actions.teleport)
				{
				hsp=0
				}
			}
		col_v=true
	    //floor_y=y
	    vsp=0
	    }
		
		if(place_meeting(x, y+floor(vsp), o_one_way_slope) && vsp>0)
			{
			if(!place_meeting(x, y, o_one_way_slope))
				{
				while(!place_meeting(x, y+sign(vsp), instance_place(x, y+floor(vsp), o_one_way_slope)))
					{
					y=y+sign(vsp)
					}
				vsp=0
				}
			}
}
