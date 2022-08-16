function scr_gp_strings_ps(argument0) {
	if(ds_map_exists(o_controller.ps_prompts, argument0))
	    {
	    return ds_map_find_value(o_controller.ps_prompts, argument0)
	    }
	else
	    return chr(argument0)



}
