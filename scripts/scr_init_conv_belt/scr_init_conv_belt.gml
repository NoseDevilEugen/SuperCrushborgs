function scr_init_conv_belt() {
	var conv
	conv=instance_place(x, y+1, o_floor_conv)

	if(conv!=noone)
	    {
	    hsp_carry=conv.hsp
	    }
    
	if(hsp_carry!=0)
	    {
	    hsp_final=hsp_carry+hsp
	    }
	else
	    {
	    hsp_final=hsp+hsp_pushed
	    }
		
	/*
	if(variable_instance_exists(id, "just_feet"))
		{
		if(just_feet!=noone)
		    {
		    hsp_carry=just_feet.hsp
		    }
		}
	*/
	
	if(ow_p!=false
	&& collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false)!=noone)
		{
		hsp_carry=collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, true, false).hsp
		}
	
	if(hsp_carry!=0)
	    {
	    hsp_final=hsp_carry+hsp
	    }
	else
	    {
	    hsp_final=hsp+hsp_pushed
	    }


}
