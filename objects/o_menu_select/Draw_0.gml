draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)

var i
for(i=0; i<array_length(menu); i=i+1)
    {
    draw_text(x+space, y+(i*space), string_hash_to_newline(string(menu[i])))
    }
     
    
draw_sprite(s_pointer, 0, x, y+mpos*space)

