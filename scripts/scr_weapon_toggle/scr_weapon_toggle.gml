function scr_weapon_toggle() {
	if(key_toggle 
	&& primary_action!=primary_actions.knockback 
	&& primary_action!=primary_actions.destroyed)
		{
		switch(active_slot)
			{
			case 0:
			active_slot=1
			break
		
			case 1:
			active_slot=0
			}
		}


}
