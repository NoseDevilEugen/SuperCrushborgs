/// @description Insert description here
// You can write your code in this editor

//audio_play_sound(bgm00, 1, false)
//show_message(string(sprite_index))
switch(o_controller.game_mode)
	{
	case 0: 
	    {
		o_controller.player1=instance_create_layer(x, y, "depth_player", o_player)
		o_controller.player2=noone
		with(o_controller.player1)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
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
		o_controller.player1=instance_create_layer(x, y, "depth_player", o_player_alt)
		o_controller.player2=noone
		with(o_controller.player1)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_one_lives
			my_score=o_controller.player_one_score
			active_slot=o_controller.player_one_active
			my_score_hidden=o_controller.player_one_score_hidden
			weapon_slot[0]=o_controller.player_one_weapon1
			weapon_slot[1]=o_controller.player_one_weapon2
			}
	    break
	    }
	case 2: 
	    {
		o_controller.player1=instance_create_layer(x, y, "depth_player", o_player)
		with(o_controller.player1)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_one_lives
			my_score=o_controller.player_one_score
			active_slot=o_controller.player_one_active
			my_score_hidden=o_controller.player_one_score_hidden
			weapon_slot[0]=o_controller.player_one_weapon1
			weapon_slot[1]=o_controller.player_one_weapon2
			}
		o_controller.player2=instance_create_layer(x-20, y, "depth_player", o_player_alt)
		with(o_controller.player2)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_two_lives
			my_score=o_controller.player_two_score
			active_slot=o_controller.player_two_active
			my_score_hidden=o_controller.player_two_score_hidden
			weapon_slot[0]=o_controller.player_two_weapon1
			weapon_slot[1]=o_controller.player_two_weapon2
			}
		//show_message(o_controller.gp_num)
		//show_message(o_controller.gamepad_slot2)
	    break
	    }
	case 3: 
	    {
		o_controller.player1=instance_create_layer(x, y, "depth_player", o_player_alt)
		with(o_controller.player1)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_one_lives
			my_score=o_controller.player_one_score
			active_slot=o_controller.player_one_active
			my_score_hidden=o_controller.player_one_score_hidden
			weapon_slot[0]=o_controller.player_one_weapon1
			weapon_slot[1]=o_controller.player_one_weapon2
			}
		o_controller.player2=instance_create_layer(x-20, y, "depth_player", o_player)
		with(o_controller.player2)
			{
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
	case 4: 
	    {
		o_controller.player1=instance_create_layer(x, y, "depth_player", o_player)
		with(o_controller.player1)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_one_lives
			my_score=o_controller.player_one_score
			active_slot=o_controller.player_one_active
			my_score_hidden=o_controller.player_one_score_hidden
			weapon_slot[0]=o_controller.player_one_weapon1
			weapon_slot[1]=o_controller.player_one_weapon2
			}
		o_controller.player2=instance_create_layer(x-20, y, "depth_player", o_player)
		with(o_controller.player2)
			{
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
	case 5: 
	    {
		o_controller.player1=instance_create_layer(x, y, "depth_player", o_player_alt) 
		with(o_controller.player1)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 0.0
			my_lives=o_controller.player_one_lives
			my_score=o_controller.player_one_score
			active_slot=o_controller.player_one_active
			my_score_hidden=o_controller.player_one_score_hidden
			weapon_slot[0]=o_controller.player_one_weapon1
			weapon_slot[1]=o_controller.player_one_weapon2
			}
		o_controller.player2=instance_create_layer(x-20, y, "depth_player", o_player_alt) 
		with(o_controller.player2)
			{
			u_position = shader_get_uniform(shd_hue, "u_Position")
			pos = 3.0
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
instance_destroy()