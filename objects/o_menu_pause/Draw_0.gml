draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)

var i
for(i=0; i<array_length(menu); i=i+1)
    {
    scr_draw_text_outlined(x+space, y+(i*space), c_black, c_white, string_hash_to_newline(string(menu[i])))
    }
    
//scr_draw_text_outlined(x+space, y+(260), c_black, c_white, string_hash_to_newline(string(o_controller.descr)))    

draw_rectangle_color(x+120, y+(space*3)-2, x+200, y+(space*3)+5, c_white, c_white, c_white, c_white, true)
draw_rectangle_color(x+120, y+(space*3)-2, x+120+o_controller.volume_music*80, y+(space*3)+5, c_white, c_white, c_white, c_white, false)

draw_rectangle_color(x+120, y+(space*4)-2, x+200, y+(space*4)+5, c_white, c_white, c_white, c_white, true)
draw_rectangle_color(x+120, y+(space*4)-2, x+120+o_controller.volume_sound*80, y+(space*4)+5, c_white, c_white, c_white, c_white, false)
    
draw_sprite(s_pointer, 0, x, y+mpos*space)

if(sure_menu==true)
	{
	scr_draw_text_outlined(x+space*4, y+space*11, c_black, c_white, "Are you sure?")
	
	scr_draw_text_outlined(x+space*2, y+space*12, c_black, c_white, "Yes")
	scr_draw_text_outlined(x+space*6, y+space*12, c_black, c_white, "No")
	
	if(sure==true)
		{
		draw_sprite(s_pointer, 0, x+space, y+space*12)
		}
	else
		{
		draw_sprite(s_pointer, 0, x+space*5, y+space*12)
		}
	}