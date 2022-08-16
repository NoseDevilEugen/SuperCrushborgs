/// @description Insert description here
// You can write your code in this editor
//draw_self()

if(rocket==true)
	{
	var i
	draw_sprite(s_rope_back_2, 0, bbox_left, y)
	draw_sprite(s_rope_front_2, 0, bbox_right-16, y)
	for(i=0; i<image_xscale-1; i++)
		{
		draw_sprite(s_rope_rocket, 0, x+(32*(i+1)), y)
		}
	//draw_text(x, y+10, string(hsp))
	}
else
	{
	draw_self()
	if(wheel==true)
		{
		draw_sprite(s_rope_gear, image_index, x, y)
		}
	//draw_text(x, y, string(wheel_rotation))
	}


//draw_set_color(c_black)
//draw_text(x, bbox_bottom+10, string(id))

//draw_text(x, y, string(counter/10))
//draw_text(x, bbox_bottom+5, string(bbox_bottom))
//draw_text(x, bbox_bottom+15, string(vsp))