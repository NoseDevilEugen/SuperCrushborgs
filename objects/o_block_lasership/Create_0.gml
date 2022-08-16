/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



//show_message(string(datatile)+" : "+string(layerID))

/*
var i, j
for(i=0; i< tilemap_get_width(my_tilemap); i++)
	{
	for(j=0; j< tilemap_get_height(my_tilemap); j++)
		{
		tilemap_set(my_tilemap, 1, i, j)
		}
	}
*/

//tilemap_clear(my_tilemap, 0)

push=false
push_hor=false
push_ver=false
destructible=false
//my own shit
//image_xscale=1
//image_yscale=1
image_speed=0.5
timer=irandom_range(0,359)

laser=instance_create(x+70, bbox_bottom, o_laser_hazard_big)
laser.image_yscale=0

pre_laser=noone

timer_laser=120

/*
l_side=instance_create(bbox_left, y, o_hazard)
with(l_side)
	{
	sprite_index=s_block_electric_ver
	image_xscale=1
	image_yscale=2
	visible=false
	//instance_destroy(id)
	}

r_side=instance_create(bbox_right, y, o_hazard)
with(r_side)
	{
	sprite_index=s_block_electric_ver
	image_xscale=-1
	image_yscale=2
	visible=false
	//instance_destroy(id)
	}

b_side=instance_create(bbox_left, bbox_bottom, o_hazard)
with(b_side)
	{
	sprite_index=s_block_electric_hor
	image_xscale=3
	image_yscale=-1
	visible=false
	//instance_destroy(id)
	}
*/
var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}