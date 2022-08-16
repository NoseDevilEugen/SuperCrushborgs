function scr_keyboard_prompts_old(argument0) {
	switch(argument0)
	    {
	    case vk_up:
	        {
	        return "Up"
	        break
	        }
	    case vk_down:
	        {
	        return "Down"
	        break
	        }
	    case vk_left:
	        {
	        return "Left"
	        break
	        }
	    case vk_right:
	        {
	        return "Right"
	        break
	        }
	    case vk_enter:
	        {
	        return "Enter"
	        break
	        }
	    case vk_escape:
	        {
	        return "Esc"
	        break
	        }
	    case vk_shift:
	        {
	        return "Shift"
	        break
	        }
	    case vk_control:
	        {
	        return "Ctrl"
	        break
	        }
	    case vk_alt:
	        {
	        return "Alt"
	        break
	        }
	    case vk_space:
	        {
	        return "Spacebar"
	        break
	        }
	    case vk_backspace:
	        {
	        return "BackSpace"
	        break
	        }
	    case vk_tab:
	        {
	        return "Tab"
	        break
	        }
	    case vk_home:
	        {
	        return "Home"
	        break
	        }
	    case vk_delete:
	        {
	        return "Delete"
	        break
	        }
	    case vk_insert:
	        {
	        return "Insert"
	        break
	        }
	    default:
	        {
	        return chr(argument0)
	        break
	        }
	    }



}
