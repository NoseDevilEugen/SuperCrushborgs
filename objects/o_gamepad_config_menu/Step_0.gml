if(taken1==false)
	{
	gamepad_slot=-1
	}
	
if(taken2==false)
	{
	gamepad_slot2=-1
	}

var move = 0

if(mouse_x!=mp_x || mouse_y!=mp_y)
    {
    mouse_moving=true
    }
    
if(mouse_x==mp_x && mouse_y==mp_y)
    {
    mouse_moving=false
    }

mp_x=mouse_x
mp_y=mouse_y  

if(taken1==true && taken2==true)
	{
		
		
		
	if(key_waiting==-1)
	    {
	    scr_get_stick_presses()

		move = move-max(keyboard_check_pressed(o_controller.key[o_controller.up_b]), keyboard_check_pressed(o_controller.t_key[o_controller.up_b]), 
		gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padu), stick_down_pressed[o_controller.gamepad_slot], 
		gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padu), stick_down_pressed[o_controller.gamepad_slot2], 0)
		move = move+max(keyboard_check_pressed(o_controller.key[o_controller.down_b]), keyboard_check_pressed(o_controller.t_key[o_controller.down_b]), 
		gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padd),stick_up_pressed[o_controller.gamepad_slot], 
		gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padd),stick_up_pressed[o_controller.gamepad_slot2], 0)

	    for(i=4; i<array_length(menu); i=i+1)
	        {
	        if(mouse_moving==true)
	            {
	            if(point_in_rectangle(mouse_x, mouse_y, x, (y-(space/2))+(i*space), x+300, (y-(space/2))+((i+1)*space)))
	                {
	                mpos=i        //draw_text(5, y+(i*space), string(mpos))
	                }
	            }
	        }
	    }

	if(move!=0)
	    {
	    mpos+=move
	    if(mpos<4)
	        {
	        mpos=array_length(menu)-1
	        }
	    if(mpos>array_length(menu)-1)
	        {
	        mpos=4
	        }
	    }

    
        
	var push1
	push1 = max(keyboard_check_released(vk_enter), 
	mouse_check_button_released(mb_left), 
	gamepad_button_check_released(o_controller.gamepad_slot, gp_face1), 
	gamepad_button_check_released(o_controller.gamepad_slot, gp_start), 
	gamepad_button_check_released(o_controller.gamepad_slot2, gp_face1), 
	gamepad_button_check_released(o_controller.gamepad_slot2, gp_start), 
	0)

	if(push1==1)
	    {
	    scr_menu_configure_key_gamepad()
	    }
    
	if(key_waiting!=-1 && input_timer>0)
	    {
	    input_timer=input_timer-1
	    }    
    
	if(key_waiting!=-1 && input_timer<=0)
	    {
		if(!gamepad_is_connected(o_controller.gamepad_slot) 
		&& !gamepad_is_connected(o_controller.gamepad_slot2))
			{
			key_waiting=-1
	        input_timer=5
			}
		else
			{
		    switch(mpos)
		        {
		        case 4: 
		            {				
		            for (i=gp_face1; i<gp_axisrv; i++)
		                {
		                if (gamepad_button_check_released(o_controller.gamepad_slot, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.g_key[o_controller.attack_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
						else if (gamepad_button_check_released(o_controller.gamepad_slot2, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.t_g_key[o_controller.attack_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
		                }
		            break
		            }
		        case 5: 
		            {
		            for (i=gp_face1; i<gp_axisrv; i++)
		                {
		                if (gamepad_button_check_released(o_controller.gamepad_slot, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.g_key[o_controller.jump_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
						else if (gamepad_button_check_released(o_controller.gamepad_slot2, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.t_g_key[o_controller.jump_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
		                }
		            break
		            }
		        case 6: 
		            {
		            for (i=gp_face1; i<gp_axisrv; i++)
		                {
		                if (gamepad_button_check_released(o_controller.gamepad_slot, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.g_key[o_controller.lock_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
						else if (gamepad_button_check_released(o_controller.gamepad_slot2, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.t_g_key[o_controller.lock_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
		                }
		            break
		            }
		        case 7: 
		            {
		            for (i=gp_face1; i<gp_axisrv; i++)
		                {
		                if (gamepad_button_check_released(o_controller.gamepad_slot, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.g_key[o_controller.toggle_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
						else if (gamepad_button_check_released(o_controller.gamepad_slot2, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.t_g_key[o_controller.toggle_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
		                }
		            break
		            }
		        case 8: 
		            {
		            for (i=gp_face1; i<gp_axisrv; i++)
		                {
		                if (gamepad_button_check_released(o_controller.gamepad_slot, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.g_key[o_controller.gun_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
						else if (gamepad_button_check_released(o_controller.gamepad_slot2, i)
		                && i!=gp_padl
		                && i!=gp_padr
		                && i!=gp_padu
		                && i!=gp_padd
		                && i!=gp_axislh
		                && i!=gp_axislv
		                && i!=gp_axisrh
		                && i!=gp_axisrv
						&& i!=gp_select
						&& i!=gp_start)
		                    {
		                    o_controller.t_g_key[o_controller.gun_b]=i
		                    key_waiting=-1
		                    input_timer=5
		                    break
		                    }
		                }
		            break
		            }
				}
	        }
	    scr_save_binding()
	    }
	}

if(taken1==false)
	{
	var gp_num = gamepad_get_device_count()
	for (var not_i = 0; not_i < gp_num; not_i++;)
		{
		if(gamepad_button_check_released(not_i, gp_start))
			{
			o_controller.gamepad_slot=not_i
			taken1=true
			}
			
		}
	if(keyboard_check_released(vk_escape))
		{
		o_controller.gamepad_slot=10
		taken1=true
		goback1=true
		}
	}
else
	{
	if(taken2==false)
		{
		var gp_num = gamepad_get_device_count()
		for (var not_i = 0; not_i < gp_num; not_i++;)
			{
			if(gamepad_button_check_released(not_i, gp_start))
				{
				if(not_i!=o_controller.gamepad_slot)
					{
					o_controller.gamepad_slot2=not_i
					taken2=true
					}
				}
			}
		if(keyboard_check_released(vk_escape))
			{
			o_controller.gamepad_slot2=11
			taken2=true
			goback2=true
			}
		}
	}
	
if(goback1==true && goback2==true)
	{
	scr_save_binding()
	room_goto(room_options) 
	instance_destroy(id)
	}