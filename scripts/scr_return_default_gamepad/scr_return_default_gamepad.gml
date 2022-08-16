function scr_return_default_gamepad() {

	//key[8]=" "

	o_controller.g_key[o_controller.right_b]=gp_padr
	o_controller.g_key[o_controller.left_b]=gp_padl
	o_controller.g_key[o_controller.jump_b]=gp_face1 
	o_controller.g_key[o_controller.lock_b]=gp_shoulderr
	o_controller.g_key[o_controller.attack_b]=gp_face3
	o_controller.g_key[o_controller.up_b]=gp_padu
	o_controller.g_key[o_controller.down_b]=gp_padd
	o_controller.g_key[o_controller.toggle_b]=gp_face2 
	o_controller.g_key[o_controller.gun_b]=gp_shoulderl
	
	o_controller.t_g_key[o_controller.right_b]=gp_padr
	o_controller.t_g_key[o_controller.left_b]=gp_padl
	o_controller.t_g_key[o_controller.jump_b]=gp_face1 
	o_controller.t_g_key[o_controller.lock_b]=gp_shoulderr
	o_controller.t_g_key[o_controller.attack_b]=gp_face3
	o_controller.t_g_key[o_controller.up_b]=gp_padu
	o_controller.t_g_key[o_controller.down_b]=gp_padd
	o_controller.t_g_key[o_controller.toggle_b]=gp_face2 
	o_controller.t_g_key[o_controller.gun_b]=gp_shoulderl
	
	scr_save_binding()

}
