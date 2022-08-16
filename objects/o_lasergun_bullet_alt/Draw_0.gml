/// @description Insert description here
// You can write your code in this editor

if(hsp!=0 && vsp!=0)
	{
	//draw_text(x, y, string(x)+" "+string(y))
	image_index=0
	if(hsp>0)
		{
		if(vsp<0)
			{
			draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
			}
		else if(vsp>0)
			{
			draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 90, c_white, 1)
			}
		}
	else if(hsp<0)
		{
		if(vsp<0)
			{
			draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 270, c_white, 1)
			}
		else if(vsp>0)
			{
			draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, 1)
			}
		}
	}
else
	{
	//image_angle=other.bullet_dir
	draw_self()
	image_index=0
	}