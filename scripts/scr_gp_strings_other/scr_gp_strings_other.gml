function scr_gp_strings_other(argument0) {
	if(ds_map_exists(o_controller.other_prompts, argument0))
	    {
	    return ds_map_find_value(o_controller.other_prompts, argument0)
	    }
	else
	    return chr(argument0)


}
