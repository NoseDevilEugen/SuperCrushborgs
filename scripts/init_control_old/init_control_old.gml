function init_control_old() {
	// Get input
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

	key_right = keyboard_check(ord("D")) || gamepad_button_check(gamepad_slot, gp_padr)
	key_left = -keyboard_check(ord("A"))
	if(gamepad_button_check(gamepad_slot, gp_padl))
	    {
	    key_left=-1
	    }
	key_jump = keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(gamepad_slot, gp_face1) 
	key_jump_held = keyboard_check(ord("K")) || gamepad_button_check(gamepad_slot, gp_face1) 
	key_lock=keyboard_check(ord("L")) || gamepad_button_check(gamepad_slot, gp_shoulderl) 
	key_lock_pressed=keyboard_check_pressed(ord("L")) || gamepad_button_check_pressed(gamepad_slot, gp_shoulderl) 
	key_lock_released=keyboard_check_released(ord("L")) || gamepad_button_check_released(gamepad_slot, gp_shoulderl) 
	key_combo = keyboard_check(ord("J")) || gamepad_button_check(gamepad_slot, gp_face3) 
	key_combo_released = keyboard_check_released(ord("J")) || gamepad_button_check_released(gamepad_slot, gp_face3) 
	key_up =  keyboard_check(ord("W")) || gamepad_button_check(gamepad_slot, gp_padu) 
	key_up_released =  keyboard_check_released(ord("W")) || gamepad_button_check_released(gamepad_slot, gp_padu) 
	key_down = keyboard_check(ord("S")) || gamepad_button_check(gamepad_slot, gp_padd)
	key_hook = keyboard_check(ord("I")) || gamepad_button_check(gamepad_slot, gp_face2) 
	key_hook_released = keyboard_check_released(ord("I")) || gamepad_button_check_released(gamepad_slot, gp_face2) 
	key_turn_released = keyboard_check_released(ord("P"))

	key_AI_switch=keyboard_check_released(vk_f3)





}
