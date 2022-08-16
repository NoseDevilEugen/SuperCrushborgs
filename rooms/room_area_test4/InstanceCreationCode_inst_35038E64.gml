

b_hazard=instance_create(bbox_left, bbox_bottom, o_spike_celling)
with(b_hazard)
	{
	sprite_index=s_block_electric_hor
	image_xscale=(sprite_get_width(other.sprite_index)*other.image_xscale)/sprite_get_width(sprite_index)
	image_yscale=-1
	//visible=false
	//instance_destroy(id)
	}
	
l_side=instance_create(bbox_left, y, o_hazard)
with(l_side)
	{
	sprite_index=s_block_electric_ver
	image_xscale=1
	image_yscale=other.image_yscale
	//visible=false
	//instance_destroy(id)
	}
	
r_side=instance_create(bbox_right, y, o_hazard)
with(r_side)
	{
	sprite_index=s_block_electric_ver
	image_xscale=-1
	image_yscale=other.image_yscale
	//visible=false
	//instance_destroy(id)
	}