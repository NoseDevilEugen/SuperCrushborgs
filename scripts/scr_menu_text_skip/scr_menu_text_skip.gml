// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu_text_skip(arg_image_index, pos_x, pos_y){
	with(instance_create(pos_x, pos_y, o_main_letter))
		{
		image_index=arg_image_index
		}

}