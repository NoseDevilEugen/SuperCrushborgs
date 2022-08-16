/// @description Insert description here
// You can write your code in this editor

draw_text(x, bbox_top-10, timer)

//draw_text(x, bbox_bottom+10, "bbox_left: "+string())
//draw_text(x, bbox_bottom+20, "xoff: "+string(sprite_xoffset))
//draw_text(x, bbox_bottom+30, "x: "+string(x))
//draw_text(x, bbox_bottom+40, "result: "+string(sprite_xoffset-sprite_get_bbox_left(sprite_index)))

if(dust==false)
	{
	gpu_set_fog(true, c_gray, 0, 0)
	draw_self()
    gpu_set_fog(false, c_gray, 0, 0)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_gray, 0.2)
	}
else
	{
			
		
	part_emitter_region(p_blood_sys, p_blood_emit, my_left+1, my_left+3, bbox_top, bbox_bottom, ps_shape_line, 1)
	part_emitter_burst(p_blood_sys, p_blood_emit, p_blood, 2)
	gpu_set_fog(true, c_gray, 0, 0)
	draw_sprite_part(sprite_index, image_index, 0+my_offset_left, 0+my_offset_top, sprite_width, sprite_height, x-sprite_xoffset+my_offset_left, y-sprite_yoffset+my_offset_top)
	gpu_set_fog(false, c_gray, 0, 0)
	draw_sprite_part_ext(sprite_index, image_index, 0+my_offset_left, 0+my_offset_top, 
	sprite_width, sprite_height, x-sprite_xoffset+my_offset_left, y-sprite_yoffset+my_offset_top, image_xscale, image_yscale, c_gray, 0.2)
	}
	
	

