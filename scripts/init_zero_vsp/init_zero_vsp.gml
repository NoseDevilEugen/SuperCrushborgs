function init_zero_vsp() {
	//vertical speed on wall and in air (new placement)
	
	//гравитация: она же бессердечная сука
	if(state!=states.wallcling
	&& state!=states.ceiling
	&& primary_action!=primary_actions.teleport)
	    {
	    if(vsp<10)
	        {
	        if(state!=states.grounded
			&& state!=states.wallcling
			&& state!=states.ceiling)
	            {
	            vsp+=grav
	            }
	        }
	    }
}
