draw_text(20, 30, string_hash_to_newline(string("Configure keys")))
//draw_text(x-32, y+500, string(mpos))

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)



if(taken1==false)
	{
	scr_draw_text_outlined(x-40, y-60, c_black, c_white, "Press Player 1 Start button (Press Escape to skip)")
	}
else
	{
	if(gamepad_is_connected(o_controller.gamepad_slot))
		{
		scr_draw_text_outlined(x-40, y-60, c_black, c_white, string("Player 1: ")+string(o_controller.descr))		
		}	
	else
		{
		scr_draw_text_outlined(x-40, y-60, c_black, c_white, string("Player 1: Keyboard"))	
		}
	}

if(taken2==false)
	{
	scr_draw_text_outlined(x-40, y-40, c_black, c_white, "Press Player 2 Start button (Press Escape to skip)")
	}
else
	{
	if(gamepad_is_connected(o_controller.gamepad_slot2))
		{
		scr_draw_text_outlined(x-40, y-40, c_black, c_white, string("Player 2: ")+string(o_controller.descr2))		
		}	
	else
		{
		scr_draw_text_outlined(x-40, y-40, c_black, c_white, string("Player 2: Keyboard"))	
		}
	}


draw_text(x+(space*10)-10, y+(space*3), string_hash_to_newline("P1"))
if(gamepad_is_connected(o_controller.gamepad_slot2))
	{
	draw_text(x+(space*12)-10, y+(space*3), string_hash_to_newline("P2"))
	}
var i
for(i=4; i<array_length(menu); i=i+1)
    {
	draw_text(x+space, y+(i*space), string_hash_to_newline(string(menu[i])))
	if (i==4 || i==5 || i==6 || i==7 || i==8)
		{
	    if(o_controller.gamepad_prompts=="XBOX")
	        {
			draw_sprite(scr_gp_strings_all(o_controller.xbox_prompts, o_controller.g_key[i]), 0, x+space*10, y+((i)*space)+2)
	        //draw_text(x+space*12, y+(i*space), string_hash_to_newline(string(scr_gp_strings_xbox(o_controller.g_key[i])))) 
	        }
	    else
	        {
	        if(o_controller.gamepad_prompts=="PS")
	            {
	            draw_sprite(scr_gp_strings_all(o_controller.ps_prompts, o_controller.g_key[i]), 0, x+space*10, y+((i)*space)+2)
	            }
	        else
	            {
	            draw_sprite(scr_gp_strings_all(o_controller.other_prompts, o_controller.g_key[i]), 0, x+space*10, y+((i)*space)+2)
	            }
	        }
		if(gamepad_is_connected(o_controller.gamepad_slot2))
			{
			if(o_controller.gamepad_prompts2=="XBOX")
		        {
				draw_sprite(scr_gp_strings_all(o_controller.xbox_prompts, o_controller.t_g_key[i]), 0, x+space*12, y+((i)*space)+2)
		        //draw_text(x+space*12, y+(i*space), string_hash_to_newline(string(scr_gp_strings_xbox(o_controller.g_key[i])))) 
		        }
		    else
		        {
		        if(o_controller.gamepad_prompts2=="PS")
		            {
		            draw_sprite(scr_gp_strings_all(o_controller.ps_prompts, o_controller.t_g_key[i]), 0, x+space*12, y+((i)*space)+2)
		            }
		        else
		            {
		            draw_sprite(scr_gp_strings_all(o_controller.other_prompts, o_controller.t_g_key[i]), 0, x+space*12, y+((i)*space)+2)
		            }
		        }
			}
		}
    //draw_rectangle(x, (y-10)+((i-4)*space), x+space*12, (y-10)+((i-3)*space), c_white)
    }
    
//draw_text(x+space, y+(400), string_hash_to_newline(string(o_controller.descr)))      
//draw_text(x+space, y+(430), string_hash_to_newline(string(o_controller.gamepad_prompts)))      
    
if(key_waiting!=-1)
    {
    draw_text(5, 250, string_hash_to_newline(string("Push " + menu[key_waiting] + " button")))
    }    
    
draw_sprite(s_pointer, 0, x-16, y+mpos*space)

