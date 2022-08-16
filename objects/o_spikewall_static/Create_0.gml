//потолочные и напольные шипы
//чтобы поменять направление, измени yscale

image_index=0

image_speed=0.1

//image_xscale=1
//image_yscale=1


//mask_index=s_acid

hazard=instance_create(x, y, o_hazard)
with(hazard)
	{
	image_xscale=other.image_xscale
	image_yscale=other.image_yscale
	sprite_index=other.sprite_index
	mask_index=other.mask_index
	}

//show_message(y)
//show_message(bbox_top)