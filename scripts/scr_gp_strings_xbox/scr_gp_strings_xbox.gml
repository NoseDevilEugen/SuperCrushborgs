function scr_gp_strings_xbox(argument0) {
	if(ds_map_exists(o_controller.xbox_prompts, argument0))
	    {
	    return ds_map_find_value(o_controller.xbox_prompts, argument0)
	    }
	else
	    return chr(argument0)
}
