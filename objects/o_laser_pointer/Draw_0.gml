/// @description Insert description here
// You can write your code in this editor

//draw_self()



draw_text(x, y, string(point_direction(x, y, start_x, start_y)))

var w = sprite_get_width(sprite_web)
var dir = point_direction(id.x, id.y, start_x, start_y)
//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
var count = point_distance(start_x, start_y, id.x, id.y) div w

if(sprite_web==s_laser_wide)
	{
		
	p_blood_dir=point_direction(x, y, x, y-10)   
	part_type_direction(p_blood, p_blood_dir, p_blood_dir, 0, 0)
	part_type_speed(p_blood, 3, 7, 0, 0)
	part_type_orientation(p_blood, 0, 360, 0, 1, false)
	part_emitter_region(p_blood_sys, p_blood_emit, x-8, x+8, y+8, y, ps_shape_rectangle, 1)
	part_emitter_burst(p_blood_sys, p_blood_emit, p_blood, 3)
		
	for(var i=0; i<=count; i++)
		{
		if(sprite_index!=-1)
		    {
		    draw_sprite_ext(sprite_web, line_index, x + xx * i, (y) + yy * i, image_xscale, image_yscale, dir, -1, 1)
		    }
		}
	}
if(sprite_web==s_laser_thin)
	{
	for(var i=0; i<=count; i++)
		{
		if(sprite_index!=-1)
		    {
		    draw_sprite_ext(sprite_web, web_subimage_arr[i mod 9], x + xx * i, (y) + yy * i, image_xscale, image_yscale, dir, -1, 1)
		    }
		}
	}