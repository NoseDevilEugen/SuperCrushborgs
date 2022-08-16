draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)

var i
for(i=0; i<array_length(menu); i=i+1)
    {
    draw_text(x+space, y+(i*space), string_hash_to_newline(string(menu[i])))

    }
    
draw_text(x+space, y+(400), string_hash_to_newline(string(o_controller.gamepad_slot)))    
    
draw_sprite(s_pointer, 0, x+16, y+mpos*space)

