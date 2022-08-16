/// @description Insert description here
// You can write your code in this editor

scr_boss_blink()

draw_set_color(c_black)

if(action==gen_actions.line)
	{
	if(instance_exists(pair))
		{
		if(y<pair.y)
			{
			var sprite_y=(y+pair.y)/2	
			var sprite_yscale=(round(pair.y-y)/32)-1
			draw_sprite_ext(s_block_gen_line_ver, frame_counter, x, sprite_y, 1, sprite_yscale, 0, c_white, 1)
			}
		}
	}

//draw_text(x, bbox_top-5, string(object_is_ancestor(object_index, o_electric_generator_ver)))
draw_set_color(c_white)