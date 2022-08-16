// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_mask_check_deprecated(){
	sprite_index=s_pantheon_idle_cropped
	start_yoffset=bbox_bottom-y

	sprite_index=s_alien_jump

	result_yoffset=bbox_bottom-y

	y=y+(start_yoffset-result_yoffset-1)
}