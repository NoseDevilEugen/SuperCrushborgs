/// @description Insert description here
// You can write your code in this editor

/*
if(object_index!=o_destructible)
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
	var lay_id2 = layer_get_id("Tiles_second_level")
	var map_id2 = layer_tilemap_get_id(lay_id2)
	for(xsc=bbox_left; xsc<floor(bbox_right); xsc=xsc+8)
		{
		for(ysc=bbox_top; ysc<floor(bbox_bottom); ysc=ysc+8)
			{
			tilemap_set_at_pixel(map_id2, 0, xsc, ysc)
			}
		}
	}
*/

var xsc, ysc
for(xsc=0; xsc<(bbox_right-bbox_left)/32; xsc=xsc+1)
	{
	for(ysc=0; ysc<(bbox_bottom-bbox_top)/32; ysc=ysc+1)
		{
		with(instance_create(bbox_left+16+(xsc*32), bbox_top+16+(ysc*32), o_special_fx_explosion))
			{
			destroy_tiles=false
			sprite_index=s_ship_explosion
			timer=1-(xsc)
			timer_ends=image_number
			}
		}
	}