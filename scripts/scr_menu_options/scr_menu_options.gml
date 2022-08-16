function scr_menu_options() {
	switch(mpos)
	    {
	    case 0: 
	        {
			room_goto(room_gamepad) 
	        break
	        }
	    case 1: 
	        {
	        room_goto(room_keyboard) 
	        break
	        }
	    case 2: 
	        {
	        //window_set_fullscreen(!window_get_fullscreen()) 
	        break
	        }
		case 3: 
	        {
			if(vsync_state==true)
				{
				vsync_state=false
				}
			else
				{
				vsync_state=true
				}
			display_reset(AA_state, vsync_state)
			//room_goto(room_main)  
	        break
	        }
		case 4: 
	        {
			//room_goto(room_main)  
	        break
	        }	
		case 5: 
	        {
			if(audio_is_playing(o_controller.music_array[0]))
				{
				audio_stop_all()
				}
			else
				{
				audio_play_sound(o_controller.music_array[0], 1, true)
				}
			//room_goto(room_main)  
	        break
	        }	
		case 6: 
	        {
			if(audio_is_playing(o_controller.sound_array[4]))
				{
				audio_stop_sound(o_controller.sound_array[4])
				}
			else
				{
				audio_play_sound(o_controller.sound_array[4], 1, false)
				} 
	        break
	        }	
		case 8: 
	        {
			room_goto(room_main)  
			audio_stop_all()
	        break
	        }
	    default: break
	    }
}
