/*
/*
instance_deactivate_region(__view_get( e__VW.XView, view_current ) - 96, 
0, 
__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current ) + 96, 
room_height, 
false, true)

instance_activate_region(__view_get( e__VW.XView, view_current ) - 256, 
0, 
__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current ) + 256,
room_height, 
true)
*/

/*
if(keyboard_check_released(vk_alt))
	{
	global.cutscene=!global.cutscene
	}
*/
if(instance_exists(player2) && instance_exists(player1))
	{
	if(player1.state!=states.dead && player2.state!=states.dead)
		{
		both_players=true
		}
	else
		{
		both_players=false
		}
	}
else
	{
	both_players=false
	}



//steam_gml_update()

screen_left=__view_get( e__VW.XView, view_current )
screen_right=__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )
screen_width=__view_get( e__VW.WView, view_current )
screen_top=__view_get( e__VW.YView, view_current )
screen_bottom=__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )
screen_height=__view_get( e__VW.HView, view_current )

sur_w=surface_get_width(application_surface)
sur_h=surface_get_height(application_surface)

/*
if(instance_exists(o_camera))
	{
	if(instance_exists(player1))
		{
		player1_spawn_x=player1.x-o_camera.screen_left
		player1_spawn_y=player1.y-o_camera.screen_top
		}
	if(instance_exists(player2))
		{
		player2_spawn_x=player2.x-o_camera.screen_left
		player2_spawn_y=player2.y-o_camera.screen_top
		}
	}
else
	{
	instance_create(x, y, o_camera)
	}
*/

switch(timer_letter)
	{
	case 320:
		{
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.c
			hsp=-25
			}
		}
	break
	case 310:
		{
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.r
			hsp=-25
			}
		}
	break	
	
	case 300:
		{
		
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.u
			hsp=-25
			}
		}
	break
	case 290:
		{
		with(instance_create(0, 32, o_main_letter))
			{
			image_index=font.r
			hsp=25
			}
		
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.s
			hsp=-25
			}
		}
	break
	case 280:
		{
		with(instance_create(0, 32, o_main_letter))
			{
			image_index=font.e
			hsp=25
			}
		
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.h
			hsp=-25
			}
		}
	break
	case 270:
		{
		with(instance_create(0, 32, o_main_letter))
			{
			image_index=font.p
			hsp=25
			}
		
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.b
			hsp=-25
			}
		}
	break
	case 260:
		{
		with(instance_create(0, 32, o_main_letter))
			{
			image_index=font.u
			hsp=25
			}
		
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.o
			hsp=-25
			}
		}
	break
	case 250:
		{
		with(instance_create(0, 32, o_main_letter))
			{
			image_index=font.s
			hsp=25
			}
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.r
			hsp=-25
			}
		}
	break


	case 240:
		{
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.g
			hsp=-25
			}
		}
	break
	case 230:
		{
		with(instance_create(room_width, 96, o_main_letter))
			{
			image_index=font.s
			hsp=-25
			}
		}
	break
	case 200:
		{
		instance_create(128, 160, o_menu_text)
		}
	break
	}

if(timer_letter>-1)
	{
	timer_letter=timer_letter-1
	}
	


gp_num=gamepad_get_device_count()

/*
gamepad_number=0
for (var not_i = 0; not_i < 11; not_i++;)
    {
    if (gamepad_is_connected(not_i))
        {
        gamepad_number=gamepad_number+1
        }
    }


	
	
if(gamepad_number==2)
	{
	for(var not_i = 0; not_i < 11; not_i++;)
	    {
	    if(gamepad_is_connected(not_i) && not_i!=gamepad_slot2)
	        {
	        gamepad_slot=not_i
	        }	
		}
	for(var not_j = 0; not_j < 11; not_j++;)
	    {
	    if(gamepad_is_connected(not_j) && not_j!=gamepad_slot )
	        {
	        gamepad_slot2=not_j
	        }
		}
	}
if(gamepad_number==1)
	{
	if(gamepad_is_connected(gamepad_slot2))
	    {
	    gamepad_slot=gamepad_slot2+1
	    }	
	if(gamepad_is_connected(gamepad_slot))
	    {
	    gamepad_slot2=gamepad_slot+1
	    }	
	}
*/

gamepad_slot=clamp(gamepad_slot, 0, gp_num)
gamepad_slot2=clamp(gamepad_slot2, 0, gp_num)

if(gamepad_is_connected(gamepad_slot))
    {  
    gamepad_set_axis_deadzone(gamepad_slot, 0.5)
    }

	
if(gamepad_is_connected(gamepad_slot))
    {
    descr=gamepad_get_description(gamepad_slot)
    }
else
	{
	descr="No gamepad"
	}

if(gamepad_is_connected(gamepad_slot2))
	{  
	gamepad_set_axis_deadzone(gamepad_slot2, 0.5)
	}

//дескрипшен геймпада
if(gamepad_is_connected(gamepad_slot2))
	{
	descr2=gamepad_get_description(gamepad_slot2)
	}
else
	{
	descr2="No gamepad"
	}
	
if(gp_num=gamepad_get_device_count())

if(string_pos("xbox", o_controller.descr)!=0 
|| string_pos("360", o_controller.descr)!=0
|| string_pos("Xbox360", o_controller.descr)!=0
|| string_pos("Xbox", o_controller.descr)!=0
|| string_pos("XBOX", o_controller.descr)!=0
|| string_pos("xinput", o_controller.descr)!=0
|| string_pos("XINPUT", o_controller.descr)!=0
|| string_pos("XInput", o_controller.descr)!=0
|| string_pos("X360", o_controller.descr)!=0
|| string_pos("x360", o_controller.descr)!=0
|| string_pos("Xinput", o_controller.descr)!=0)
    {
    gamepad_prompts="XBOX"
    }
else
    {
    if(string_pos("Sony", o_controller.descr)!=0 
    || string_pos("sony", o_controller.descr)!=0
    || string_pos("SONY", o_controller.descr)!=0
    || string_pos("PS", o_controller.descr)!=0
    || string_pos("Dualshock", o_controller.descr)!=0
    || string_pos("playstation", o_controller.descr)!=0
    || string_pos("dualshock", o_controller.descr)!=0
    || string_pos("DUALSHOCK", o_controller.descr)!=0
    || string_pos("Playstation", o_controller.descr)!=0)
        {
        gamepad_prompts="PS"
        }
    else
        {
        gamepad_prompts="OTHER"
        }
    }
	
if(string_pos("xbox", o_controller.descr2)!=0 
|| string_pos("360", o_controller.descr2)!=0
|| string_pos("Xbox360", o_controller.descr2)!=0
|| string_pos("Xbox", o_controller.descr2)!=0
|| string_pos("XBOX", o_controller.descr2)!=0
|| string_pos("xinput", o_controller.descr2)!=0
|| string_pos("XINPUT", o_controller.descr2)!=0
|| string_pos("XInput", o_controller.descr2)!=0
|| string_pos("X360", o_controller.descr2)!=0
|| string_pos("x360", o_controller.descr2)!=0
|| string_pos("Xinput", o_controller.descr2)!=0)
    {
    gamepad_prompts2="XBOX"
    }
else
    {
    if(string_pos("Sony", o_controller.descr2)!=0 
    || string_pos("sony", o_controller.descr2)!=0
    || string_pos("SONY", o_controller.descr2)!=0
    || string_pos("PS", o_controller.descr2)!=0
    || string_pos("Dualshock", o_controller.descr2)!=0
    || string_pos("playstation", o_controller.descr2)!=0
    || string_pos("dualshock", o_controller.descr2)!=0
    || string_pos("DUALSHOCK", o_controller.descr2)!=0
    || string_pos("Playstation", o_controller.descr2)!=0)
        {
        gamepad_prompts2="PS"
        }
    else
        {
        gamepad_prompts2="OTHER"
        }
    }


if(room==room_main
&& timer_letter>230
&& (gamepad_button_check_released(gamepad_slot, gp_start)
|| keyboard_check_released(vk_enter)
|| gamepad_button_check_released(gamepad_slot, gp_face1)
|| mouse_check_button_released(mb_left))
&& !instance_exists(o_menu_text))
	{
	timer_letter=-1
	instance_destroy(o_main_letter)
	
	scr_menu_text_skip(font.s, 130, 32)
	scr_menu_text_skip(font.u, 168, 32)
	scr_menu_text_skip(font.p, 206, 32)
	scr_menu_text_skip(font.e, 244, 32)
	scr_menu_text_skip(font.r, 282, 32)
	
	scr_menu_text_skip(font.c, 38, 96)
	scr_menu_text_skip(font.r, 76, 96)
	scr_menu_text_skip(font.u, 114, 96)
	scr_menu_text_skip(font.s, 152, 96)
	scr_menu_text_skip(font.h, 192, 96)
	scr_menu_text_skip(font.b, 228, 96)
	scr_menu_text_skip(font.o, 266, 96)
	scr_menu_text_skip(font.r, 304, 96)
	scr_menu_text_skip(font.g, 342, 96)
	scr_menu_text_skip(font.s, 380, 96)

	instance_create(128, 160, o_menu_text)
	//instance_create()
	}

if(room!=room_main)
	{
	timer_letter=330
	}

if(room==room_winscreen || room==room_gameover)
    {
	//timer_letter=330
    if(gameover_timer>0)
        {
        gameover_timer=gameover_timer-1
        }
    else
        {
        gameover_timer=300
        scr_game_restart_custom()
        }
    }

my_current_room=room



//код для читкодов на оружие ниже
if(room==room_transition)
	{
	o_camera.scroll_x=true
	o_camera.scroll_y=true
	if(cheat_pressed==1)
		{
		if(keyboard_check_released(ord("M")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon2=weapons.machinegun
			}
		if(keyboard_check_released(ord("E")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon2=weapons.energygun
			}
		if(keyboard_check_released(ord("L")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon2=weapons.lasergun
			}
		if(keyboard_check_released(ord("H")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon2=weapons.hominggun
			}
		if(keyboard_check_released(ord("S")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon2=weapons.spreadgun
			}
		}
		
	if(cheat_pressed==2)
		{
		if(keyboard_check_released(ord("M")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon1=weapons.machinegun
			}
		if(keyboard_check_released(ord("E")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon1=weapons.energygun
			}
		if(keyboard_check_released(ord("L")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon1=weapons.lasergun
			}
		if(keyboard_check_released(ord("H")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon1=weapons.hominggun
			}
		if(keyboard_check_released(ord("S")))
			{
			cheat_pressed=cheat_pressed-1
			player_two_weapon1=weapons.spreadgun
			}
		}
		
	if(cheat_pressed==3)
		{
		if(keyboard_check_released(ord("M")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon2=weapons.machinegun
			}
		if(keyboard_check_released(ord("E")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon2=weapons.energygun
			}
		if(keyboard_check_released(ord("L")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon2=weapons.lasergun
			}
		if(keyboard_check_released(ord("H")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon2=weapons.hominggun
			}
		if(keyboard_check_released(ord("S")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon2=weapons.spreadgun
			}
		}
		
	if(cheat_pressed==4)
		{
		if(keyboard_check_released(ord("M")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon1=weapons.machinegun
			}
		if(keyboard_check_released(ord("E")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon1=weapons.energygun
			}
		if(keyboard_check_released(ord("L")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon1=weapons.lasergun
			}
		if(keyboard_check_released(ord("H")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon1=weapons.hominggun
			}
		if(keyboard_check_released(ord("S")))
			{
			cheat_pressed=cheat_pressed-1
			player_one_weapon1=weapons.spreadgun
			}
		}

		
	if(room_next_timer>0)
		{
		room_next_timer=room_next_timer-1
		}
	else
		{
		room_next_timer=150
		//TransitionStart(my_next_room, seq_fade_out, seq_fade_in)
		room_goto(my_next_room)
		
		cheat_pressed=4
		}
	}

if(room==room_area_test4)
	{
	layer_set_visible("Tiles_1", false)
	}

/*
if(layer_exists("transition") && room!=room_transition)
	{
	//show_message(layer_get_y("transition"))
	layer_x("transition", o_camera.screen_left-240)
	layer_y("transition", o_camera.screen_top-135)
	//layer_y("transition", 1)
	//show_message("yeah")
	}
*/


if(room!=room_transition)
	{
	if(afterboss_timer>0)
		{
		afterboss_timer=afterboss_timer-1
		}
	else if(afterboss_timer==0)
		{
		afterboss_timer=-1
		room_next_timer=150
		
		
		room_goto(room_transition)
		}
	}

if(player_switch>0)
	{
	player_switch=player_switch-1
	}
else
	{
	switch(player)
		{
		case player1: 
			{
			if(player2!=noone)
				{
				player=player2
				}
			break
			}
		case player2: 
			{
			if(player1!=noone)
				{
				player=player1
				}
			break
			}
		}
	player_switch=360
	}





/* */
/*  */