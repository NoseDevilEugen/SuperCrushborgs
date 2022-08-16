//show_debug_message(true)

display_set_gui_size(480, 270)

display_set_gui_maximize(surface_get_width(application_surface)/480, 
surface_get_height(application_surface)/270, 
o_controller.Xoffset, 
o_controller.Yoffset)

//init_control()

init_player_variables()
sel=0

camera_y=y

//test=false
pantheons_active=1

select_but=scr_gp_strings_all(o_controller.other_prompts, o_controller.g_key[o_controller.gun_b])
action_but=scr_gp_strings_all(o_controller.other_prompts, o_controller.g_key[o_controller.gun_b])