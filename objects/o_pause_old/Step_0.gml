/// @description Insert description here
// You can write your code in this editor

gamepad_slot=o_controller.gamepad_slot

//screen_state=window_get_fullscreen()


if(overlay==true)
	{
	//draw_enable_drawevent(true)
	visible=true
	pause_surf=surface_create(__view_get( e__VW.WView, view_current ), __view_get( e__VW.HView, view_current ))	
	//surface_copy(pause_surf, o_camera.screen_left, o_camera.screen_top, application_surface)
	surface_set_target(pause_surf)
	draw_clear_alpha(c_black, 0)
	paused=true
			
	with(all)
		{
		if(visible==true)
			{
			x=x-o_camera.screen_left
			y=y-o_camera.screen_top
			event_perform(ev_draw, 0)
			x=x+o_camera.screen_left
			y=y+o_camera.screen_top
			}
		}
			
				
	draw_enable_drawevent(false)
	
	surface_reset_target()

	instance_deactivate_all(true)
	instance_activate_object(o_controller)
	instance_activate_object(o_camera)
	visible=true
	
	instance_create(o_camera.screen_left+96, o_camera.screen_top+64, o_menu_options_pause)
	
	surface_free(pause_surf)
			
	}
else
	{
	surface_free(pause_surf)
	paused=false
	instance_destroy(o_menu_options_pause)
	draw_enable_drawevent(true)
	//visible=false
	instance_activate_all()
	}



if((keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(gamepad_slot, gp_start))
&& !keyboard_check(vk_alt))
	{
	if(room!=room_gameover
	&& room!=room_gamepad
	&& room!=room_keyboard
	&& room!=room_main
	&& room!=room_select
	&& room!=room_options
	&& room!=room_winscreen
	&& room!=room_gameover
	&& room!=room_transition)
		{
		//screen_change=window_get_fullscreen()
		if(overlay==false)
			{
			//push1=0
			overlay=true
			}
		else
			{
			overlay=false
			screen_change=false
			}
		}
	}
	
if((keyboard_check_pressed(vk_escape) 
|| (gamepad_button_check(gamepad_slot, gp_shoulderlb) && gamepad_button_check(gamepad_slot, gp_shoulderrb))))
	{
	if(room!=room_gameover
	&& room!=room_gamepad
	&& room!=room_keyboard
	&& room!=room_main
	&& room!=room_select
	&& room!=room_winscreen
	&& room!=room_gameover
	&& room!=room_transition)
		{
		//screen_change=window_get_fullscreen()
		if(overlay==true)
			{
			//push1=0
			scr_game_restart_custom()
			}
		}
	}



	

