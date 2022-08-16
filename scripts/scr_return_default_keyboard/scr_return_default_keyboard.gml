function scr_return_default_keyboard() {
	o_controller.key[o_controller.right_b]=ord("D")
	o_controller.key[o_controller.left_b]=ord("A")

	o_controller.key[o_controller.jump_b]=ord("K") 
	o_controller.key[o_controller.lock_b]=ord("L")
	o_controller.key[o_controller.attack_b]=ord("J")
	o_controller.key[o_controller.up_b]=ord("W")
	o_controller.key[o_controller.down_b]=ord("S")
	o_controller.key[o_controller.toggle_b]=ord("I") 
	o_controller.key[o_controller.gun_b]=ord("U") 
	
	o_controller.t_key[o_controller.right_b]=vk_right
	o_controller.t_key[o_controller.left_b]=vk_left

	o_controller.t_key[o_controller.jump_b]=vk_numpad2 
	o_controller.t_key[o_controller.lock_b]=vk_numpad3
	o_controller.t_key[o_controller.attack_b]=vk_numpad1
	o_controller.t_key[o_controller.up_b]=vk_up
	o_controller.t_key[o_controller.down_b]=vk_down
	o_controller.t_key[o_controller.toggle_b]=vk_numpad5 
	o_controller.t_key[o_controller.gun_b]=vk_numpad4

	//key[8]=" "


	scr_save_binding()



}
