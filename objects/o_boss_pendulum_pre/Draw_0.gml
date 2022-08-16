/// @description Insert description here
// You can write your code in this editor
if(timer>20)
	{
    gpu_set_fog(true, c_black, 0, 0)
	draw_self()
	draw_sprite_ext(s_anchor, 0, anchor_x, anchor_y, image_xscale, image_yscale, 0, c_white, 1)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
	var w = sprite_get_height(s_pendulum_chain)-10
	var dir = point_direction(id.x, id.y, anchor_x, anchor_y)
	//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
	var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
	var count = point_distance(anchor_x, anchor_y, id.x, id.y) div w
	for(var i=0; i<count; i++)
		{
		if(i>0)
		    {
		    draw_sprite_ext(s_pendulum_chain, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir+90, c_white, 1)
		    }
		}
    gpu_set_fog(false, c_black, 0, 0)
	if(timer<100)
		{
		draw_sprite_ext(s_anchor, 0, anchor_x, anchor_y, image_xscale, image_yscale, 0, c_white, 1-((timer)/100))
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1-((timer)/100))
		var w = sprite_get_height(s_pendulum_chain)-10
		var dir = point_direction(id.x, id.y, anchor_x, anchor_y)
		//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
		var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
		var count = point_distance(anchor_x, anchor_y, id.x, id.y) div w
		for(var i=0; i<count; i++)
		    {
		    if(i>0)
		        {
		        draw_sprite_ext(s_pendulum_chain, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir+90, c_white, 1-((timer)/100))
		        }
		    }
		}
    //blink=false
	}
else
	{
	draw_sprite_ext(s_anchor, 0, anchor_x, anchor_y, image_xscale, image_yscale, 0, c_white, 1)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
	var w = sprite_get_height(s_pendulum_chain)-10
	var dir = point_direction(id.x, id.y, anchor_x, anchor_y)
	//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
	var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
	var count = point_distance(anchor_x, anchor_y, id.x, id.y) div w
	for(var i=0; i<count; i++)
		{
		if(i>0)
		    {
		    draw_sprite_ext(s_pendulum_chain, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir+90, c_white, 1)
		    }
		}
    draw_self()
	}