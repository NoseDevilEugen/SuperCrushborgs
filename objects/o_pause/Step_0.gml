/// @description Insert description here
// You can write your code in this editor

gamepad_slot=o_controller.gamepad_slot

//screen_state=window_get_fullscreen()
if(instance_exists(o_camera))
	{
	screen_left=o_camera.screen_left
	screen_top=o_camera.screen_top
	screen_right=o_camera.screen_right
	screen_bottom=o_camera.screen_bottom
	}


if((keyboard_check_pressed(vk_enter) 
|| gamepad_button_check_released(gamepad_slot, gp_start))
&& !keyboard_check(vk_alt)
&& paused==false)
	{
	shake=layer_get_visible(layer_get_id("effect_screen_shake"))
	layer_set_visible(layer_get_id("effect_screen_shake"), false)
	if(room!=room_gameover
	&& room!=room_gamepad
	&& room!=room_keyboard
	&& room!=room_main
	&& room!=room_select
	&& room!=room_select_players
	&& room!=room_options
	&& room!=room_winscreen
	&& room!=room_gameover
	&& room!=room_transition)
		{
		paused=true
		audio_pause_all()
		if(paused==true)
			{
			instance_create_layer(screen_left+96, screen_top+64, "depth_portals", o_menu_pause)	
			if(!surface_exists(scrn))
				{
				scrn=surface_create(o_controller.sur_w, o_controller.sur_h)
				surface_copy(scrn, 0, 0, application_surface)
				my_sprite=sprite_create_from_surface(scrn, 0, 0, o_controller.sur_w, o_controller.sur_h, 0, 0, 0, 0)
				spr_width=sprite_get_width(my_sprite)
				spr_height=sprite_get_height(my_sprite)
				surface_free(scrn)

				}
			instance_deactivate_all(true)
			instance_activate_object(o_controller)
			//instance_activate_object(o_camera)
			instance_activate_object(o_menu_pause)
			instance_activate_object(o_gamepad_config_menu_pause)
			instance_activate_object(o_key_config_menu_pause)
			}
		}	
	}
	
if(paused==false)
	{
	if(sprite_exists(my_sprite))
		{
		sprite_delete(my_sprite)
		}
	}