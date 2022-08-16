function scr_menu() {
	switch(mpos)
	    {
	    case 0: 
	        {
			o_controller.game_mode=0
	        room_goto(room_select_players)
	        break
	        }
	    case 1: 
	        {
			o_controller.game_mode=1
	        room_goto(room_select_players) 
	        break
	        }
	    case 2: 
	        {
	        room_goto(room_options) 
	        break
	        }   
		case 3: 
	        {
	        game_end() 
	        break
	        } 
	    default: break
	    }
}
