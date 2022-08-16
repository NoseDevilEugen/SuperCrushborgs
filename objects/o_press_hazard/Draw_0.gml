/// @description Insert description here
// You can write your code in this editor

draw_self()

//рисуем якорь
draw_sprite_ext(s_anchor_small, 0, anchor_x, anchor_y, image_xscale, image_yscale, 0, c_white, 1)

//draw_sprite_ext(sprite_index, image_index, xprevious, yprevious, image_xscale, image_yscale, 0, c_white, 0.5)

//рисуем цепь
var w = sprite_get_height(s_pendulum_chain_small)-10
var dir = point_direction(id.x, id.y, anchor_x, anchor_y)
//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
var count = point_distance(anchor_x, anchor_y, id.x, id.y) div w
for(var i=0; i<count; i++)
	{
	if(i>0)
	    {
	    draw_sprite_ext(s_pendulum_chain_small, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir+90, -1, 1)
	    }
	}
	
//draw_text(x-30, bbox_top-80, "timer:" + string(id.timer_fall))
//draw_text(x-30, bbox_top-50, "bottom:" + string(id.bbox_bottom))