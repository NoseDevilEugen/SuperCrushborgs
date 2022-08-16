draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)

//draw_rectangle_color(1, 1, __view_get(e__VW.WView, view_current)-2, __view_get(e__VW.HView, view_current)-2, c_white, c_white, c_white, c_white, true)

//draw_text(mouse_x, mouse_y-10, string(mouse_x))
//draw_text(mouse_x, mouse_y, string(mouse_y))
var i
for(i=0; i<array_length(menu); i=i+1)
    {
	//draw_rectangle_color(0, (y-(space/2))+(i*space), room_width, (y-(space/2))+((i+1)*space), c_white, c_white, c_white, c_white, true)
    draw_text(x+space, y+(i*space), string_hash_to_newline(string(menu[i])))
    }
     
    
draw_sprite(s_pointer, 0, x, y+mpos*space)

//draw_sprite(s_pointer_r, 0, x+string_width(string(menu[mpos]))+string_width(menu[mpos]), y+mpos*space)