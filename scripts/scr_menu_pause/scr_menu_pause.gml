function scr_menu_pause() {
	switch(mpos)
	    {
	    case 0: 
	        {
			instance_destroy(id)
	        //o_pause.paused=false
			//overlay=false
			with(o_pause)
				{
				paused=false
				layer_set_visible(layer_get_id("effect_screen_shake"), shake)
				if(surface_exists(scrn))
					{
					surface_free(scrn)
					}
				sprite_delete(my_sprite)
				my_sprite=noone
				//instance_destroy(id)
				instance_activate_all()
				if(instance_exists(o_controller.player1))
					{
					with(o_controller.player1)
						{
						display_set_gui_maximize(surface_get_width(application_surface)/480, 
						surface_get_height(application_surface)/270, 
						o_controller.Xoffset, 
						o_controller.Yoffset)
						}
					}
				if(instance_exists(o_controller.player2))
					{
					with(o_controller.player2)
						{
						display_set_gui_maximize(surface_get_width(application_surface)/480, 
						surface_get_height(application_surface)/270, 
						o_controller.Xoffset, 
						o_controller.Yoffset)
						}
					}
				}
			audio_resume_all()
	        break
	        }
	    case 1: 
	        {
			instance_destroy(id)
	        instance_create_layer(x, y, "depth_portals", o_gamepad_config_menu_pause)
	        break
	        }
	    case 2: 
	        {
			instance_destroy(id)
	        instance_create_layer(x, y, "depth_portals",o_key_config_menu_pause)
	        break
	        }
			
		case 3: 
	        {

			//room_goto(room_main)  
	        break
	        }	
		case 4: 
	        {
			 
	        break
	        }	
			
	    case 9: 
	        {
			//push1=0
			sure_menu=true
			not_sure=true
			//show_message(sure_menu)
			
	        //room_goto(room_main) 
	        break
	        }
	    default: break
	    }
}
