function scr_menu_configure_key_pause() {
	
	if(mpos>=0 && mpos<=8)
		{
		key_waiting=mpos
		}
	else
		{
		switch(mpos)
			{
		    case 9: 
		        {
		        scr_return_default_keyboard()
		        break
		        }
		    case 10: 
		        {
		        scr_save_binding()
		        //room_goto(room_options) 
				instance_destroy(id)
				instance_create_layer(x, y, "depth_portals", o_menu_pause)
		        break
		        }
		    default: break
			}
		}
}
