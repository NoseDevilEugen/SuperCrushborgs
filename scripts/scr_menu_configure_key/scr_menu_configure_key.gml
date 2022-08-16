function scr_menu_configure_key() {
	
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
		        room_goto(room_options) 
				instance_destroy(id)
		        break
		        }
		    default: break
			}
		}
}
