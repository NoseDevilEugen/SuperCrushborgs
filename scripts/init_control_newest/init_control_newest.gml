function init_control_newest(my_gamepad_slot, my_gamepad_arr, my_keyboard_arr) {
	// Get input
	/*
	
	my_gamepad_slot is gamepad_slot
	my_gamepad_arr is input array g_key or t_g_key
	my_keyboard_arr is input array key or t_key
	
	var gp_num = gamepad_get_device_count()
	for (var not_i = 0; not_i < gp_num; not_i++;)
	    {
	    if gamepad_is_connected(not_i)
	        {
	        gamepad_slot=not_i
	        }
	    else 
	        {
	        gamepad_slot=0
	        }
	    }
	if gamepad_is_connected(not_i)
	    {  
	    gamepad_set_axis_deadzone(gamepad_slot, 0.5)
	    }
	*/


	if(keyboard_key)
		{
		keyboard_active=true
		gamepad_active=false
		}
	
	
	for (i=gp_face1; i<gp_axisrv; i++)
		{
		if (gamepad_button_check(my_gamepad_slot, i) 
		|| gamepad_axis_value(my_gamepad_slot, gp_axislh)>0.5 
		|| gamepad_axis_value(my_gamepad_slot, gp_axislv)>0.5
		|| gamepad_axis_value(my_gamepad_slot, gp_axislh)<-0.5 
		|| gamepad_axis_value(my_gamepad_slot, gp_axislv)<-0.5
		|| gamepad_axis_value(my_gamepad_slot, gp_axisrh)>0.5 
		|| gamepad_axis_value(my_gamepad_slot, gp_axisrv)>0.5
		|| gamepad_axis_value(my_gamepad_slot, gp_axisrh)<-0.5 
		|| gamepad_axis_value(my_gamepad_slot, gp_axisrv)<-0.5)
		    {
		    keyboard_active=false
		    gamepad_active=true
		    }
		}


	if(gamepad_button_check_released(my_gamepad_slot, gp_select))
		{
		toggle_combolist=!toggle_combolist
		if(toggle_combolist==true)
		    {
		    toggle_control=false
		    } 
		}
    
	/*
	if(gamepad_button_check_released(my_gamepad_slot, 16))
		{
		toggle_combolist=!toggle_combolist
		if(toggle_combolist==true)
		    {
		    toggle_control=false
		    } 
		}
	*/ 
	 
	if(keyboard_check_released(vk_f2))
		{
		toggle_combolist=!toggle_combolist
		if(toggle_combolist==true)
			{
			toggle_control=false
			} 
		}

	if(gamepad_button_check_released(my_gamepad_slot, gp_start))
		{
		toggle_control=!toggle_control
		if(toggle_control==true)
			{
			toggle_combolist=false
			} 
		}
    
	if(keyboard_check_released(vk_f1))
		{
		toggle_control=!toggle_control
		if(toggle_control==true)
			{
			toggle_combolist=false
			} 
		}
 

	key_right = keyboard_check(my_keyboard_arr[o_controller.right_b]) 
	|| gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.right_b])

	if(gamepad_axis_value(my_gamepad_slot, gp_axislh)>0.5)
		{
		key_right=1
		}

	key_left = -keyboard_check(my_keyboard_arr[o_controller.left_b])
	if(gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.left_b]))
		{
		key_left=-1
		}
	if(gamepad_axis_value(my_gamepad_slot, gp_axislh)<-0.5)
		{
		key_left=-1
		}    
    
	key_jump = keyboard_check_pressed(my_keyboard_arr[o_controller.jump_b]) || gamepad_button_check_pressed(my_gamepad_slot, my_gamepad_arr[o_controller.jump_b]) 
	key_jump_held = keyboard_check(my_keyboard_arr[o_controller.jump_b]) || gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.jump_b]) 
	key_lock=keyboard_check(my_keyboard_arr[o_controller.lock_b]) || gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.lock_b]) 
	key_lock_pressed=keyboard_check_pressed(my_keyboard_arr[o_controller.lock_b]) || gamepad_button_check_pressed(my_gamepad_slot, my_gamepad_arr[o_controller.lock_b]) 
	key_lock_released=keyboard_check_released(my_keyboard_arr[o_controller.lock_b]) || gamepad_button_check_released(my_gamepad_slot, my_gamepad_arr[o_controller.lock_b]) 
	key_combo = keyboard_check(my_keyboard_arr[o_controller.attack_b]) || gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.attack_b]) 
	key_combo_released = keyboard_check_released(my_keyboard_arr[o_controller.attack_b]) || gamepad_button_check_released(my_gamepad_slot, my_gamepad_arr[o_controller.attack_b]) 
	key_up =  keyboard_check(my_keyboard_arr[o_controller.up_b]) || gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.up_b]) 
	if(gamepad_axis_value(my_gamepad_slot, gp_axislv)<-0.5)
		{
		key_up=1
		}

	key_down = keyboard_check(my_keyboard_arr[o_controller.down_b]) || gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.down_b])
	if(gamepad_axis_value(my_gamepad_slot, gp_axislv)>0.5)
		{
		key_down=1
		}

	key_hook = keyboard_check(my_keyboard_arr[o_controller.toggle_b]) || gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.toggle_b]) 
	key_hook_released = keyboard_check_released(my_keyboard_arr[o_controller.toggle_b]) || gamepad_button_check_released(my_gamepad_slot, my_gamepad_arr[o_controller.toggle_b]) 

	key_gun = keyboard_check(my_keyboard_arr[o_controller.gun_b]) || gamepad_button_check(my_gamepad_slot, my_gamepad_arr[o_controller.gun_b]) 
	key_gun_released = keyboard_check_released(my_keyboard_arr[o_controller.gun_b]) || gamepad_button_check_released(my_gamepad_slot, my_gamepad_arr[o_controller.gun_b]) 

	key_toggle=keyboard_check_pressed(my_keyboard_arr[o_controller.toggle_b]) || gamepad_button_check_pressed(my_gamepad_slot, my_gamepad_arr[o_controller.toggle_b]) 

	key_turn_released = keyboard_check_released(ord("P"))

	key_AI_switch=keyboard_check_released(vk_f3)


}
