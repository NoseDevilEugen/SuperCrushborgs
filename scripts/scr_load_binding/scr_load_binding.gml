function scr_load_binding() {
	if(file_exists("savedata.ini"))
	    {
	    ini_open("savedata.ini")  
      
	    o_controller.g_key[o_controller.attack_b]=ini_read_real( "g_control", "g_attack_btn", gp_face3)
	    o_controller.g_key[o_controller.lock_b] =ini_read_real( "g_control", "g_lock_btn", gp_shoulderl)
	    o_controller.g_key[o_controller.toggle_b]=ini_read_real( "g_control", "g_toggle_btn",  gp_face2)
	    o_controller.g_key[o_controller.jump_b]=ini_read_real( "g_control", "g_jump_btn",  gp_face1)
	    o_controller.g_key[o_controller.gun_b]=ini_read_real( "g_control", "g_gun_btn",  gp_shoulderl)
    
	    o_controller.key[o_controller.left_b]=ini_read_real( "k_control", "k_left_btn",  ord("A"))
	    o_controller.key[o_controller.right_b]=ini_read_real( "k_control", "k_right_btn",  ord("D"))
	    o_controller.key[o_controller.up_b] =ini_read_real( "k_control", "k_up_btn", ord("W"))
	    o_controller.key[o_controller.down_b]=ini_read_real( "k_control", "k_down_btn",  ord("S"))
	    o_controller.key[o_controller.attack_b]=ini_read_real( "k_control", "k_attack_btn",  ord("J"))
	    o_controller.key[o_controller.lock_b]=ini_read_real( "k_control", "k_lock_btn",  ord("L"))
	    o_controller.key[o_controller.toggle_b]=ini_read_real( "k_control", "k_toggle_btn",  ord("I"))
	    o_controller.key[o_controller.jump_b]=ini_read_real( "k_control", "k_jump_btn",  ord("K"))
	    o_controller.key[o_controller.gun_b]=ini_read_real( "k_control", "k_gun_btn",  ord("U"))
		
		o_controller.t_g_key[o_controller.attack_b]=ini_read_real( "t_g_control", "t_g_attack_btn", gp_face3)
	    o_controller.t_g_key[o_controller.lock_b] =ini_read_real( "t_g_control", "t_g_lock_btn", gp_shoulderl)
	    o_controller.t_g_key[o_controller.toggle_b]=ini_read_real( "t_g_control", "t_g_toggle_btn",  gp_face2)
	    o_controller.t_g_key[o_controller.jump_b]=ini_read_real( "t_g_control", "t_g_jump_btn",  gp_face1)
	    o_controller.t_g_key[o_controller.gun_b]=ini_read_real( "t_g_control", "t_g_gun_btn",  gp_shoulderl)
    
	    o_controller.t_key[o_controller.left_b]=ini_read_real( "t_k_control", "t_k_left_btn",  vk_left)
	    o_controller.t_key[o_controller.right_b]=ini_read_real( "t_k_control", "t_k_right_btn",  vk_right)
	    o_controller.t_key[o_controller.up_b] =ini_read_real( "t_k_control", "t_k_up_btn", vk_up)
	    o_controller.t_key[o_controller.down_b]=ini_read_real( "t_k_control", "t_k_down_btn",  vk_down)
	    o_controller.t_key[o_controller.attack_b]=ini_read_real( "t_k_control", "t_k_attack_btn",  vk_numpad1)
	    o_controller.t_key[o_controller.lock_b]=ini_read_real( "t_k_control", "t_k_lock_btn",  vk_numpad3)
	    o_controller.t_key[o_controller.toggle_b]=ini_read_real( "t_k_control", "t_k_toggle_btn",  vk_numpad5)
	    o_controller.t_key[o_controller.jump_b]=ini_read_real( "t_k_control", "t_k_jump_btn",  vk_numpad2)
	    o_controller.t_key[o_controller.gun_b]=ini_read_real( "t_k_control", "t_k_gun_btn",  vk_numpad4)
		
		o_controller.scr_pos=ini_read_real( "options", "screen_mode",  3)
		o_controller.vsync_state=ini_read_real( "options", "vsync",  true)
		o_controller.AA_state=ini_read_real( "options", "AA",  0)
		o_controller.volume_sound=ini_read_real( "options", "volume_sound",  1)
		o_controller.volume_music=ini_read_real( "options", "volume_music",  1)
		o_controller.show_hints=ini_read_real( "options", "show_hints",  1)
		
	    ini_close()
	    }



}
