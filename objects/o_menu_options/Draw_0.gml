draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)

var i
for(i=0; i<array_length(menu); i=i+1)
    {
    draw_text(x+space, y+(i*space), string(menu[i]))
    }
    
//draw volume bar
draw_rectangle_color(x+120, y+(space*5)-2, x+200, y+(space*5)+5, c_white, c_white, c_white, c_white, true)
draw_rectangle_color(x+120, y+(space*5)-2, x+120+o_controller.volume_music*80, y+(space*5)+5, c_white, c_white, c_white, c_white, false)

draw_rectangle_color(x+120, y+(space*6)-2, x+200, y+(space*6)+5, c_white, c_white, c_white, c_white, true)
draw_rectangle_color(x+120, y+(space*6)-2, x+120+o_controller.volume_sound*80, y+(space*6)+5, c_white, c_white, c_white, c_white, false)


draw_sprite(s_pointer, 0, x, y+mpos*space)

draw_text(x+space+space, y+(10*space), string(message_for_player[mpos]))