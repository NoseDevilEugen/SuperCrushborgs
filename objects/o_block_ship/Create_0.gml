/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();




y_start=ystart

hp=5



/*
my_tilemap=layer_tilemap_create("Tiles_1", x, y, TestTile, sprite_width/16, sprite_height/16)
var layerID
layerID=layer_tilemap_get_id("Tiles_1")
var datatile
var i, j
for(i=0; i<sprite_width/16; i++)
	{
	for(j=0; j<sprite_height/16; j++)
		{
		datatile[i][j]=tilemap_get(layerID, (x+(i*16))/16, (y+(j*16))/16)
	
		tilemap_set(my_tilemap, datatile[i][j], i, j)
		//tilemap_set(my_tilemap, 4, i, j)
		}
	}
*/


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

r_side=noone
l_side=noone
b_side=noone
t_side=noone


r_hazard=noone
l_hazard=noone
b_hazard=noone
t_hazard=noone

push=false
push_hor=false
push_ver=false
destructible=false
//my own shit
//image_xscale=1
//image_yscale=1
image_speed=0.5
timer=irandom_range(0,359)

/*
if(object_index!=o_block_complex_ship)
	{
	r_side=instance_create(bbox_right, y, o_hazard)
	with(r_side)
		{
		sprite_index=s_block_electric_ver
		image_xscale=-1
		image_yscale=2
		visible=false
		//instance_destroy(id)
		}
	}


l_side=instance_create(bbox_left, y, o_hazard)
with(l_side)
	{
	sprite_index=s_block_electric_ver
	image_xscale=1
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
	
if(object_index==o_block_ship)
	{
	with(instance_create_layer(bbox_left+62, bbox_bottom, "depth_blocks", o_block_complex_ship))
		{
		timer=other.timer
		sprite_index=s_floor_block
		image_xscale=66/sprite_get_width(sprite_index)
		image_yscale=20/sprite_get_height(sprite_index)
		}

		
	}