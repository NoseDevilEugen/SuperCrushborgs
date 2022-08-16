/// @description Insert description here
// You can write your code in this editor

scr_init_standing()

if(room==room_area_test2)
	{
	if(!audio_is_playing(o_controller.music_array[1]))
			{
			audio_play_sound(o_controller.music_array[1], 1, true)
			}
		global.background_music=o_controller.music_array[1]
	}
	
if(room==room_area_test3)
	{
	if(!audio_is_playing(o_controller.music_array[2]))
			{
			audio_play_sound(o_controller.music_array[2], 1, true)
			}
		global.background_music=o_controller.music_array[2]
	}

//audio_play_sound(o_controller.music_array[0], 1, false)
//show_message(string(sprite_index))
switch(o_controller.game_mode)
	{
	case 0: 
	    {

		o_controller.player1=instance_create_layer(x, y, "depth_player", o_controller.player1_type)
		
		//show_message(o_controller.player1)
		o_controller.player2=noone
		
		with(o_controller.player1)
			{
			this_gamepad_arr=o_controller.g_key
			this_keyboard_arr=o_controller.key
			this_gamepad_slot=o_controller.gamepad_slot
			if(room==room_area_test)
				{
				invul_time=0
				primary_action=primary_actions.cutscene
				sprite_index=s_array[primary_action]
				scr_init_standing()
				}
			
			//scr_init_standing()
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			if(room!=room_area_test)
				{
				primary_action=primary_actions.idle
				}
			sprite_index=s_array[primary_action]
			my_lives=o_controller.player_one_lives
			my_score=o_controller.player_one_score
			active_slot=o_controller.player_one_active
			my_score_hidden=o_controller.player_one_score_hidden
			weapon_slot[0]=o_controller.player_one_weapon1
			weapon_slot[1]=o_controller.player_one_weapon2
			}
	    break
	    }
	case 1: 
	    {
		o_controller.player1=instance_create_layer(x, y, "depth_player", o_controller.player1_type)
		o_controller.player2=instance_create_layer(x, y, "depth_player", o_controller.player2_type)
		with(o_controller.player1)
			{
			this_gamepad_arr=o_controller.g_key
			this_keyboard_arr=o_controller.key
			this_gamepad_slot=o_controller.gamepad_slot	
			if(room==room_area_test)
				{
				invul_time=0
				primary_action=primary_actions.cutscene
				sprite_index=s_array[primary_action]
				scr_init_standing()
				}
			if(room!=room_area_test)
				{
				primary_action=primary_actions.idle
				}
			sprite_index=s_array[primary_action]
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_one_lives
			my_score=o_controller.player_one_score
			active_slot=o_controller.player_one_active
			my_score_hidden=o_controller.player_one_score_hidden
			weapon_slot[0]=o_controller.player_one_weapon1
			weapon_slot[1]=o_controller.player_one_weapon2
			}
			
		with(o_controller.player2)
			{
			this_gamepad_arr=o_controller.t_g_key
			this_keyboard_arr=o_controller.t_key
			this_gamepad_slot=o_controller.gamepad_slot2	
			if(room==room_area_test)
				{
				x=other.x-48
				invul_time=0
				primary_action=primary_actions.cutscene
				sprite_index=s_array[primary_action]
				scr_init_standing()
				}
			if(room!=room_area_test)
				{
				primary_action=primary_actions.idle
				}
			sprite_index=s_array[primary_action]
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_two_lives
			my_score=o_controller.player_two_score
			active_slot=o_controller.player_two_active
			my_score_hidden=o_controller.player_two_score_hidden
			weapon_slot[0]=o_controller.player_two_weapon1
			weapon_slot[1]=o_controller.player_two_weapon2
			}	
			
	    break
	    }
	}
o_controller.player=o_controller.player1

if(o_controller.player1!=noone)
	{
	if(place_meeting(o_controller.player1.x, o_controller.player1.y, o_rope_moving))
		{
		while(place_meeting(o_controller.player1.x, o_controller.player1.y, o_rope_moving))
			{
			o_controller.player1.y=o_controller.player1.y+1
			}
		o_controller.player1.invul_time=0	
		o_controller.player1.state=states.ceiling
		}
	}
	
if(o_controller.player2!=noone)
	{
	o_controller.player2.x=o_controller.player2.x-64
	if(place_meeting(o_controller.player2.x, o_controller.player2.y, o_rope_moving))
		{
		
		while(place_meeting(o_controller.player2.x, o_controller.player2.y, o_rope_moving))
			{
			o_controller.player2.y=o_controller.player2.y+1
			}
		
		o_controller.player2.invul_time=0	
		o_controller.player2.state=states.ceiling
		}
	}	
	
instance_destroy()