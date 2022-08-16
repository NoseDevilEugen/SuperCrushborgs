function scr_init_skeleton() {
	skelet.image_xscale=image_xscale
	skelet.image_yscale=image_yscale

	skelet.x=x
	skelet.y=y

	if(state==states.grounded)
		{
		if(primary_action==primary_actions.duck)
			{
			skelet.sprite_index=s_main_skeleton_duck
			}
		else
			{
			skelet.sprite_index=s_main_skelet_idle
			}
		}
	
	if(state==states.airborne)
		{
		skelet.sprite_index=s_main_skeleton_jump
		}
	
	if(state==states.wallcling)
		{
		skelet.sprite_index=s_main_skeleton_wall
		}

	if(state==states.ceiling)
		{
		skelet.sprite_index=s_main_skeleton_ceiling
		}



}
