/// @description Insert description here
// You can write your code in this editor

if(my_spider.dual_spider_action!=dual_spider_actions.move)
	{
	draw_self()
	}
var w = sprite_get_width(sprite_web)
var dir = point_direction(id.x, id.y, start_x, start_y)
//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
var count = point_distance(start_x, start_y, id.x, id.y) div w

if(sprite_web==s_spider_web_electric)
		{
	for(var i=0; i<count; i++)
		{
		if(i>0 && sprite_index!=-1)
		    {
		    draw_sprite_ext(sprite_web, subimage_arr[i mod 9], x + xx * i, (y) + yy * i, image_xscale, image_yscale, dir, -1, 1)
		    }
		}
	}
if(sprite_web==s_spider_web)
	{
	for(var i=0; i<count; i++)
		{
		if(i>0 && sprite_index!=-1)
		    {
		    draw_sprite_ext(sprite_web, web_subimage_arr[i mod 9], x + xx * i, (y) + yy * i, image_xscale, image_yscale, dir, -1, 1)
		    }
		}
	}