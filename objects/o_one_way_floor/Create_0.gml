x=floor(x)
y=floor(y)

destructible=false

hsp=0
vsp=0

//draw_set_alpha(0)

if(object_index==o_one_way_floor
|| object_index==o_one_way_floor_moving_hor)
	{
	rope=instance_create_layer(x, y, "depth_blocks", o_rope)
	with(rope)
		{
		//visible=false
		image_xscale=other.image_xscale
		image_yscale=other.image_yscale
		}
	}


if(object_index==o_one_way_slope)
	{
	//visible=false
	rope=instance_create_layer(x, y+sprite_height,"depth_blocks",o_rope_angle)

	}
else if(object_index==o_one_way_slope_mirr)
	{
	//visible=false
	rope=instance_create_layer(x, y+sprite_height,"depth_blocks" ,o_rope_angle_mirror)

	}

