/// @description Insert description here
// You can write your code in this editor

	
count = point_distance(anchor_x, anchor_y+5, id.x, id.y) div w
dir = point_direction(id.x, id.y, anchor_x, anchor_y+5)
//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
var xx = lengthdir_x(w, dir) 
var yy = lengthdir_y(w, dir)
for(var i=0; i<count+1; i++)
	{
	//depth=1000
	if(i>0)
	    {
	    draw_sprite_ext(s_pendulum_chain_small, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir+90, -1, 1)
	    }
	}