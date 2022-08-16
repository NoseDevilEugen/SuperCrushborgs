/// @description Insert description here
// You can write your code in this editor

draw_self()

if(phase==0)
	{
	draw_sprite_ext(s_anchor, 0, anchor_x, anchor_y, image_xscale, image_yscale, 0, c_white, 1)
	
	//draw_sprite_ext(sprite_index, image_index, lerp(xprevious, x, sticky), lerp(yprevious, y, sticky), image_xscale, image_yscale, 0, c_white, 0.5)
	
	var w = sprite_get_height(s_pendulum_chain)-10
	var dir = point_direction(id.x, id.y, anchor_x, anchor_y)
	//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
	var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
	var count = point_distance(anchor_x, anchor_y, id.x, id.y) div w
	for(var i=0; i<count; i++)
	    {
	    if(i>0)
	        {
	        draw_sprite_ext(s_pendulum_chain, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir+90, -1, 1)
	        }
	    }
	}

scr_boss_blink()


//draw_text(xstart+20, ystart+20, string(angle))
//draw_text(xstart+20, ystart+40, string(angle_velocity))
