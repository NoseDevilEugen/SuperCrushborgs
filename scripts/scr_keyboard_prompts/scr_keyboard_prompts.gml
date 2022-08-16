function scr_keyboard_prompts(argument0) {
	if(ds_map_exists(o_controller.keyboard_prompts, argument0))
	    {
	    return ds_map_find_value(o_controller.keyboard_prompts, argument0)
	    }
	else
		return chr(argument0)


}
