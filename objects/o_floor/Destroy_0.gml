/// @description Insert description here
// You can write your code in this editor


var xsc, ysc
var lay_id = layer_get_id("Tiles_1")
var map_id = layer_tilemap_get_id(lay_id)
var lay_id2 = layer_get_id("Tiles_2")
var map_id2 = layer_tilemap_get_id(lay_id2)
for(xsc=bbox_left; xsc<floor(bbox_right); xsc=xsc+8)
	{
	for(ysc=bbox_top; ysc<floor(bbox_bottom); ysc=ysc+8)
		{
		tilemap_set_at_pixel(map_id, 0, xsc, ysc)
		tilemap_set_at_pixel(map_id2, 0, xsc, ysc)
		}
	}

var i
for(i=0; i<abs(image_xscale)*abs(image_yscale); i++)
	{
	with(instance_create(irandom_range(bbox_left, bbox_right), irandom_range(bbox_top, bbox_bottom), o_special_fx_explosion))
		{
		sprite_index=s_ship_explosion
		timer=1-(irandom_range(0,2))
		timer_ends=image_number
		}
	}