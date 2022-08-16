draw_text(5, 10, string_hash_to_newline(string("Configure keys (please do not bind Enter to any action)")))
//draw_text(x-32, y+500, string(mpos))

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)

var i

//var _output
//var _char_output

draw_text(x+space*12, y-(space*2), string_hash_to_newline(submenu[0]))

if(vpos==0)
	{
	draw_rectangle(x+space*11, (y-(space*3)), x+space*15, (y-(space/2))+((10+1)*space), c_white)
	}
else if(vpos==1)
	{
	draw_rectangle(x+space*15, (y-(space*3)), x+space*19, (y-(space/2))+((10+1)*space), c_white)
	}


draw_text(x+space*16, y-(space*2), string_hash_to_newline(submenu[1]))

for(i=0; i<array_length(menu); i=i+1)
    {
		
    draw_text(x+space, y+(i*space), string_hash_to_newline(string(menu[i])))
	
	
	if(i<array_length(menu)-2)
		{
	    draw_text(x+space*12, y+(i*space), string_hash_to_newline(string(scr_keyboard_prompts(o_controller.key[i]))))
		draw_text(x+space*16, y+(i*space), string_hash_to_newline(string(scr_keyboard_prompts(o_controller.t_key[i]))))
		}
    /*
    if(o_controller.key[i]!=vk_left)
        {
        draw_text(x+space*12, y+(i*space), string(chr(o_controller.key[i])))
        }
    else
        {
        draw_text(x+space*12, y+(i*space), string((o_controller.key[i])))
        }
    */
    draw_rectangle(x, (y-(space/2))+(i*space), x+space*19, (y-(space/2))+((i+1)*space), c_white)
    //draw_text(5, y+(i*space), string(mpos))
    }
    
if(key_waiting!=-1)
    {
    draw_text(5, 250, string_hash_to_newline(string("Push " + menu[key_waiting] + " button for "+submenu[vpos])))
    }    
    
draw_sprite(s_pointer, 0, x-16, y+mpos*space)

/* */
/*  */
