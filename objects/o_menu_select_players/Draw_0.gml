draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(font_menu)
draw_set_color(c_white)


	if(pick_gamepad1==false)
		{
		scr_draw_text_outlined(30, 40, c_black, c_white, "Player 1, press Start button (Esc for keyboard)")
		}
	else
		{
		scr_draw_text_outlined(30, 40, c_black, c_white, string("Player 1: ")+string(o_controller.descr))	
		if(taken1==true)
			{
			draw_sprite_ext(p1_char_sprite[mpos+2], i_i, 140, 160, 1, 1, 0, c_white, 1)
			}
		else
			{
			draw_sprite_ext(p1_char_sprite[mpos], i_i, 140, 160, 1, 1, 0, c_white, 1)
			}
		}
	
	
	
if(o_controller.game_mode==1)
	{
	if(pick_gamepad2==false)
		{
		scr_draw_text_outlined(30, 60, c_black, c_white, "Player 2, press Start button (Esc for keyboard)")
		}
	else
		{
		scr_draw_text_outlined(30, 60, c_black, c_white, string("Player 2: ")+string(o_controller.descr2))	
		
		if(taken2==true)
			{
			draw_sprite_ext(p1_char_sprite[mpos2+2], i_i, 300, 160, 1, 1, 0, c_white, 1)
			}
		else
			{
			draw_sprite_ext(p1_char_sprite[mpos2], i_i, 300, 160, 1, 1, 0, c_white, 1)
			}
		}
	}
//scr_draw_text_outlined(80, 100, c_black, c_white, p1_char[mpos])
//scr_draw_text_outlined(400, 100, c_black, c_white, taken_timer)     

//scr_draw_text_outlined(400, 120, c_black, c_white, o_controller.gamepad_slot)     
//scr_draw_text_outlined(400, 140, c_black, c_white, o_controller.gamepad_slot2)     


//draw_sprite(s_pointer, 0, x, y+mpos*space)

