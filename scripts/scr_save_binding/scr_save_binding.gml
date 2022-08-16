function scr_save_binding() {
	if(file_exists("savedata.ini"))
	    {
	    ini_open("savedata.ini")  
      
	    ini_write_real( "g_control", "g_attack_btn", o_controller.g_key[o_controller.attack_b] )
	    ini_write_real( "g_control", "g_lock_btn", o_controller.g_key[o_controller.lock_b] )
	    ini_write_real( "g_control", "g_toggle_btn", o_controller.g_key[o_controller.toggle_b] )
	    ini_write_real( "g_control", "g_jump_btn", o_controller.g_key[o_controller.jump_b] )
	    ini_write_real( "g_control", "g_gun_btn", o_controller.g_key[o_controller.gun_b] )
    
	    ini_write_real( "k_control", "k_left_btn", o_controller.key[o_controller.left_b] )
	    ini_write_real( "k_control", "k_right_btn", o_controller.key[o_controller.right_b] )
	    ini_write_real( "k_control", "k_up_btn", o_controller.key[o_controller.up_b] )
	    ini_write_real( "k_control", "k_down_btn", o_controller.key[o_controller.down_b] )
	    ini_write_real( "k_control", "k_attack_btn", o_controller.key[o_controller.attack_b] )
	    ini_write_real( "k_control", "k_lock_btn", o_controller.key[o_controller.lock_b] )
	    ini_write_real( "k_control", "k_toggle_btn", o_controller.key[o_controller.toggle_b] )
	    ini_write_real( "k_control", "k_jump_btn", o_controller.key[o_controller.jump_b] )
	    ini_write_real( "k_control", "k_gun_btn", o_controller.key[o_controller.gun_b] )
		
		ini_write_real( "t_g_control", "t_g_attack_btn", o_controller.t_g_key[o_controller.attack_b] )
	    ini_write_real( "t_g_control", "t_g_lock_btn", o_controller.t_g_key[o_controller.lock_b] )
	    ini_write_real( "t_g_control", "t_g_toggle_btn", o_controller.t_g_key[o_controller.toggle_b] )
	    ini_write_real( "t_g_control", "t_g_jump_btn", o_controller.t_g_key[o_controller.jump_b] )
	    ini_write_real( "t_g_control", "t_g_gun_btn", o_controller.t_g_key[o_controller.gun_b] )
    
	    ini_write_real( "t_k_control", "t_k_left_btn", o_controller.t_key[o_controller.left_b] )
	    ini_write_real( "t_k_control", "t_k_right_btn", o_controller.t_key[o_controller.right_b] )
	    ini_write_real( "t_k_control", "t_k_up_btn", o_controller.t_key[o_controller.up_b] )
	    ini_write_real( "t_k_control", "t_k_down_btn", o_controller.t_key[o_controller.down_b] )
	    ini_write_real( "t_k_control", "t_k_attack_btn", o_controller.t_key[o_controller.attack_b] )
	    ini_write_real( "t_k_control", "t_k_lock_btn", o_controller.t_key[o_controller.lock_b] )
	    ini_write_real( "t_k_control", "t_k_toggle_btn", o_controller.t_key[o_controller.toggle_b] )
	    ini_write_real( "t_k_control", "t_k_jump_btn", o_controller.t_key[o_controller.jump_b] )
	    ini_write_real( "t_k_control", "t_k_gun_btn", o_controller.t_key[o_controller.gun_b] )
		
		ini_write_real( "options", "screen_mode", o_controller.scr_pos )
		ini_write_real( "options", "vsync", o_controller.vsync_state )
		ini_write_real( "options", "AA", o_controller.AA_state )
		ini_write_real( "options", "volume_sound", o_controller.volume_sound )
		ini_write_real( "options", "volume_music", o_controller.volume_music )
		ini_write_real( "options", "show_hints", o_controller.show_hints )
	    ini_close()
	    }



}
