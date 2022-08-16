// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dead_behaviour(){
	
	
	if(state==states.dead)
		{
		if(my_lives<=0)
			{
			if(id==o_controller.player1)
				{
				if(instance_exists(o_controller.player2))
					{
					if(o_controller.player2.state!=states.dead)
						{
						if(point_distance(x, y, o_controller.player2.x, o_controller.player2.y)>10)
							{
							x=x+lengthdir_x(10, point_direction(x, y, o_controller.player2.x, o_controller.player2.y))
							y=y+lengthdir_y(10, point_direction(x, y, o_controller.player2.x, o_controller.player2.y))
							}
						else
							{
							x=o_controller.player2.x
							y=o_controller.player2.y
							}
						}
					else
						{
						o_controller.player1=noone
						o_controller.player2=noone
						room_goto(room_gameover)
						}
					if(o_controller.player2!=noone && o_controller.player2.my_lives>1)
						{
						if(o_controller.player2_type==o_player)
							{
							if(gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl)
							|| gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr)
							|| keyboard_check_pressed(o_controller.key[o_controller.right_b])
							|| keyboard_check_pressed(o_controller.key[o_controller.left_b]))
								{
								if(object_index==o_player)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									pos = 0.0
									instance_change(o_player_alt, false)
									my_name="<-   NEO   ->"
									init_sprites_alt()
									//o_controller.game_mode=3
									}
								else if(object_index==o_player_alt)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									if(o_controller.player2.pos==3.0)
										{
										pos = 0.0
										}
									else
										{
										pos = 3.0
										}
									my_name="<- CLASSIC ->"
									instance_change(o_player, false)
									init_sprites()
									//o_controller.game_mode=4
									}
								}
							}
						else if(o_controller.player2_type==o_player_alt)
							{
							if(gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl)
							|| gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr)
							|| keyboard_check_pressed(o_controller.key[o_controller.right_b])
							|| keyboard_check_pressed(o_controller.key[o_controller.left_b]))
								{
								if(object_index==o_player)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									if(o_controller.player2.pos==3.0)
										{
										pos = 0.0
										}
									else
										{
										pos = 3.0
										}
									instance_change(o_player_alt, false)
									my_name="<-   NEO   ->"
									init_sprites_alt()
									//o_controller.game_mode=5
									}
								else if(object_index==o_player_alt)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									pos=3.0
									my_name="<- CLASSIC ->"
									instance_change(o_player, false)
									init_sprites()
									o_controller.game_mode=2
									}
								}
							}
							
						if(key_jump)
							{
							while(place_meeting(x, y, o_floor))
								{
								y=y-1
								}
							sprite_index=s_array[primary_actions.jump]
							vsp=-jumpspeed
							invul_time=150
							state=states.airborne
							primary_action=primary_actions.jump
							my_lives=my_lives+1
							o_controller.player2.my_lives=o_controller.player2.my_lives-1
							}
						}
					}
				else
					{
					o_controller.player1=noone
					o_controller.player2=noone
					room_goto(room_gameover)
					}
				o_controller.player1_type=object_index	
				}
			if(id==o_controller.player2)
				{
				if(instance_exists(o_controller.player1))
					{
					if(o_controller.player1.state!=states.dead)
						{
						if(point_distance(x, y, o_controller.player1.x, o_controller.player1.y)>10)
							{
							x=x+lengthdir_x(10, point_direction(x, y, o_controller.player1.x, o_controller.player1.y))
							y=y+lengthdir_y(10, point_direction(x, y, o_controller.player1.x, o_controller.player1.y))
							}
						else
							{
							x=o_controller.player1.x
							y=o_controller.player1.y
							}
						}
					else
						{
						room_goto(room_gameover)
						}
					if(o_controller.player1!=noone && o_controller.player1.my_lives>1)
						{
							
						if(o_controller.player1_type==o_player)
							{
							if(gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padl)
							|| gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padr)
							|| keyboard_check_pressed(o_controller.t_key[o_controller.right_b])
							|| keyboard_check_pressed(o_controller.t_key[o_controller.left_b]) )
								{
								if(object_index==o_player)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									pos = 0.0
									my_name="<-   NEO   ->"
									instance_change(o_player_alt, false)
									init_sprites_alt()
									o_controller.game_mode=2
									}
								else if(object_index==o_player_alt)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									if(o_controller.player1.pos==3.0)
										{
										pos = 0.0
										}
									else
										{
										pos = 3.0
										}
									my_name="<- CLASSIC ->"
									instance_change(o_player, false)
									init_sprites()
									o_controller.game_mode=4
									}
								}
							}
						else if(o_controller.player1_type==o_player_alt)
							{
							if(gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padl)
							|| gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padr)
							|| keyboard_check_pressed(o_controller.t_key[o_controller.right_b])
							|| keyboard_check_pressed(o_controller.t_key[o_controller.left_b]))
								{
								if(object_index==o_player)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									pos = 3.0
									my_name="<-   NEO   ->"
									instance_change(o_player_alt, false)
									init_sprites_alt()
									o_controller.game_mode=5
									}
								else if(object_index==o_player_alt)
									{
									u_position = shader_get_uniform(shd_hue, "u_Position")
									if(o_controller.player1.pos==3.0)
										{
										pos = 0.0
										}
									else
										{
										pos = 3.0
										}
									my_name="<- CLASSIC ->"
									instance_change(o_player, false)
									init_sprites()
									o_controller.game_mode=3
									}
								}
							}
						
						if(key_jump)
							{
							while(place_meeting(x, y, o_floor))
								{
								y=y-1
								}
							sprite_index=s_array[primary_actions.jump]
							vsp=-jumpspeed
							invul_time=150
							state=states.airborne
							primary_action=primary_actions.jump
							my_lives=my_lives+1
							o_controller.player1.my_lives=o_controller.player1.my_lives-1
							}
						}
					}
				else
					{
					o_controller.player1=noone
					o_controller.player2=noone
					room_goto(room_gameover)
					}
				o_controller.player2_type=object_index	
				}
			}
		}
	
}