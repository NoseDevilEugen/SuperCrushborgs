//draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+50, string_hash_to_newline("Zero x: " + string(o_player.x)))
//draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+70, string_hash_to_newline("Zero y: " + string(o_player.y)))





/*
if(keyboard_check_pressed(vk_enter) || gamepad_button_check_released(gamepad_slot, gp_start))
	{
	if(room!=room_gameover
	&& room!=room_gamepad
	&& room!=room_keyboard
	&& room!=room_main
	&& room!=room_select
	&& room!=room_winscreen
	&& room!=room_gameover
	&& room!=room_main)
		{
		if(paused==false)
			{
			draw_set_alpha(0.5)
			draw_rectangle_color(o_camera.screen_left, 
			o_camera.screen_top,
			o_camera.screen_left+__view_get( e__VW.WView, view_current ), 
			o_camera.screen_top+__view_get( e__VW.HView, view_current ),
			c_black,
			c_black,
			c_black,
			c_black,
			0)
			draw_set_alpha(1)
			}
		}
	}
*/
draw_set_font(font_menu)
draw_set_color(c_white)

//draw_text(x, y, gamepad_slot)

if(room==room_transition)
	{
	draw_text(__view_get( e__VW.XView, 0 )+220,__view_get( e__VW.YView, 0 )+120, string_hash_to_newline(room_name[my_next_room]))
	//draw_text(__view_get( e__VW.XView, 0 )+150,__view_get( e__VW.YView, 0 )+100, string_hash_to_newline("Lives: "+ string(player_one_lives)))
	
	draw_text(o_camera.screen_left+17, o_camera.screen_top+5, string_repeat("0", 7-string_length(string(player_one_score))) + string(player_one_score))
	draw_sprite(weapon_icons[player_one_weapon1], 0, o_camera.screen_left+10+sprite_get_width(weapon_icons[player_one_weapon1])/2,o_camera.screen_top+24)
	draw_sprite(weapon_icons[player_one_weapon2], 0, o_camera.screen_left+40+sprite_get_width(weapon_icons[player_one_weapon1])/2,o_camera.screen_top+24)
	for(var i=0; i<player_one_lives; i++)
		{
		draw_sprite(s_life_medal, 0, o_camera.screen_left+(10+(10*(i+1))), o_camera.screen_top+35)
		}
	if(game_mode==1)
		{
		draw_text(o_camera.screen_left+407, o_camera.screen_top+5, string_repeat("0", 7-string_length(string(player_two_score))) + string(player_two_score))
		
		draw_sprite(weapon_icons[player_two_weapon1], 0, o_camera.screen_left+400+sprite_get_width(weapon_icons[player_one_weapon1])/2,o_camera.screen_top+24)
		draw_sprite(weapon_icons[player_two_weapon2], 0, o_camera.screen_left+430+sprite_get_width(weapon_icons[player_one_weapon1])/2,o_camera.screen_top+24)
		
		for(var i=0; i<player_two_lives; i++)
			{
			draw_sprite(s_life_medal, 0, o_camera.screen_left+390+(10+(10*(i+1))), o_camera.screen_top+35)
			}
		}	
	}
	
if(room==room_main 
|| room==room_gamepad
|| room==room_keyboard
|| room==room_options
|| room==room_select)
	{
	//draw_text(x+50, y+(410), string_hash_to_newline(string(gamepad_number))) 
	draw_text(120, 10, string_hash_to_newline(string(descr)+string(", slot ")+string(gamepad_slot)))    
    draw_text(120, 20, string_hash_to_newline(string(descr2)+string(", slot ")+string(gamepad_slot2)))    
	}
	
draw_set_color(c_black)

//scr_draw_text_outlined(o_camera.screen_left+120, o_camera.screen_top+200, c_black, c_white, string(global.cutscene))
