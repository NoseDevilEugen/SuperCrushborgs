function scr_populate_gamepad_prompts() {
	xbox_prompts=ds_map_create()
	ps_prompts=ds_map_create()
	other_prompts=ds_map_create()

	ds_map_add(o_controller.xbox_prompts, gp_face1, s_xbox_A)
	ds_map_add(o_controller.xbox_prompts, gp_face2, s_xbox_B)
	ds_map_add(o_controller.xbox_prompts, gp_face3, s_xbox_X)
	ds_map_add(o_controller.xbox_prompts, gp_face4, s_xbox_Y)
	ds_map_add(o_controller.xbox_prompts, gp_shoulderl, s_xbox_LB)
	ds_map_add(o_controller.xbox_prompts, gp_shoulderr, s_xbox_RB)
	ds_map_add(o_controller.xbox_prompts, gp_shoulderlb, s_xbox_LT)
	ds_map_add(o_controller.xbox_prompts, gp_shoulderrb, s_xbox_RT)
	ds_map_add(o_controller.xbox_prompts, gp_select, s_xbox_back)
	ds_map_add(o_controller.xbox_prompts, gp_start, s_xbox_start)
	ds_map_add(o_controller.xbox_prompts, gp_stickl, s_xbox_L3)
	ds_map_add(o_controller.xbox_prompts, gp_stickr, s_xbox_R3)

	ds_map_add(o_controller.ps_prompts, gp_face1, s_PS_cross)
	ds_map_add(o_controller.ps_prompts, gp_face2, s_PS_circle)
	ds_map_add(o_controller.ps_prompts, gp_face3, s_PS_square)
	ds_map_add(o_controller.ps_prompts, gp_face4, s_PS_triangle)
	ds_map_add(o_controller.ps_prompts, gp_shoulderl, s_PS_L1)
	ds_map_add(o_controller.ps_prompts, gp_shoulderr, s_PS_R1)
	ds_map_add(o_controller.ps_prompts, gp_shoulderlb, s_PS_L2)
	ds_map_add(o_controller.ps_prompts, gp_shoulderrb, s_PS_R2)
	ds_map_add(o_controller.ps_prompts, gp_select, s_PS_select)
	ds_map_add(o_controller.ps_prompts, gp_start, s_PS_start)
	ds_map_add(o_controller.ps_prompts, gp_stickl, s_PS_L3)
	ds_map_add(o_controller.ps_prompts, gp_stickr, s_PS_R3)

	ds_map_add(o_controller.other_prompts, gp_face1, s_other_button1)
	ds_map_add(o_controller.other_prompts, gp_face2, s_other_button2)
	ds_map_add(o_controller.other_prompts, gp_face3, s_other_button3)
	ds_map_add(o_controller.other_prompts, gp_face4, s_other_button4)
	ds_map_add(o_controller.other_prompts, gp_shoulderl, s_PS_L1)
	ds_map_add(o_controller.other_prompts, gp_shoulderr, s_PS_R1)
	ds_map_add(o_controller.other_prompts, gp_shoulderlb, s_PS_L2)
	ds_map_add(o_controller.other_prompts, gp_shoulderrb, s_PS_R2)
	ds_map_add(o_controller.other_prompts, gp_select, s_PS_select)
	ds_map_add(o_controller.other_prompts, gp_start, s_PS_start)
	ds_map_add(o_controller.other_prompts, gp_stickl, s_PS_L3)
	ds_map_add(o_controller.other_prompts, gp_stickr, s_PS_R3)
}
