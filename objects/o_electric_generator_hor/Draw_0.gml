/// @description Insert description here
// You can write your code in this editor

scr_boss_blink()

draw_set_color(c_black)
//draw_text(x, bbox_top-5, string(image_index))

if(action==gen_actions.line)
	{
	if(instance_exists(pair))
		{
		if(x<pair.x)
			{
			var sprite_x=(x+pair.x)/2	
			var sprite_xscale=(round(pair.x-x)/32)-2
			draw_sprite_ext(s_block_gen_line_hor, frame_counter, sprite_x, y, sprite_xscale, 1, 0, c_white, 1)
			}
		}
	}


draw_set_color(c_white)