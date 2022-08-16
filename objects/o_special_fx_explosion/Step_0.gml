/// @description Insert description here
// You can write your code in this editor


if(timer>=0)
	{
	image_index=timer
	}
else
	{
	image_index=0
	}

/*
if(timer>=2 && destroy_tiles==true)
	{
	var xsc, ysc
	var lay_id = layer_get_id("Tiles_1")
	var map_id = layer_tilemap_get_id(lay_id)
	for(xsc=bbox_left; xsc<floor(bbox_right); xsc=xsc+8)
		{
		for(ysc=bbox_top; ysc<floor(bbox_bottom); ysc=ysc+8)
			{
			tilemap_set_at_pixel(map_id, 0, xsc, ysc)
			}
		}
	}
*/

if(timer<=timer_ends)
	{
	timer=timer+0.3
	}

if(timer>=timer_ends
&& sprite_index!=noone)
	{
	instance_destroy(id)
	}