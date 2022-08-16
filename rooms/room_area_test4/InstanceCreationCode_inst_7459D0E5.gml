
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