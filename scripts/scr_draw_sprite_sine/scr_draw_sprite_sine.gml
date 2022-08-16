// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_sprite_sine(spr_angle, spr_amplitude){
	
	for (i=0; i<sprite_height; i+=1)
		{
		draw_sprite_part_ext
		(
		sprite_index,
		image_index,
		bbox_left,
		bbox_top,
		sprite_width,
		1,
		x-sprite_get_xoffset(sprite_index)+sin((spr_angle+i)*degtorad(spr_amplitude))*spr_amplitude,
		y-sprite_get_yoffset(sprite_index)+i,
		1,
		1,
		c_white,
		image_alpha
		)
		}	
}