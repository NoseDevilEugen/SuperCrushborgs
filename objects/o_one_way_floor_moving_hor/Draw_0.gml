
draw_self()

/*
draw_set_alpha(0.5)

draw_set_alpha(1)
//draw_text(x, y, string(bbox_top))

*/

if(hsp>0)
	{
	draw_sprite_ext(s_reactive_fire2, image_index*2, bbox_left, bbox_top-4, 1, 1, 0, c_white, 1)
	}
else if(hsp<0)
	{
	draw_sprite_ext(s_reactive_fire2, image_index*2, bbox_right, bbox_top-4, -1, 1, 0, c_white, 1)
	}
