

//o_main_hud.x=x
//o_main_hud.y=y

x=floor(x)
y=floor(y)

//mp_grid_add_instances(global.grid, o_floor, 0)

if(id==o_controller.player1)
	{
	this_gamepad_arr=o_controller.g_key
	this_keyboard_arr=o_controller.key
	this_gamepad_slot=o_controller.gamepad_slot	
	}
else if(id==o_controller.player2)
	{
	this_gamepad_arr=o_controller.t_g_key
	this_keyboard_arr=o_controller.t_key
	this_gamepad_slot=o_controller.gamepad_slot2
	}

//set cotrol buttons
if(global.cutscene==false)
	{
	//init_control()
	init_control_newest(this_gamepad_slot, this_gamepad_arr, this_keyboard_arr)
	}
else
	{
	key_jump = 0
	key_jump_held = 0
	key_lock=0
	key_lock_pressed=0
	key_lock_released=0
	key_combo =0
	key_combo_released = 0 
	key_up = 0
	key_down = 0
	key_left = 0
	key_right = 0
	key_hook = 0
	key_gun = 0
	key_toggle = 0
	}

scr_weapon_toggle()

//get left and right buttons
init_move()
//vertical speed on wall and in air (new placement)
init_zero_vsp()
//sword combos here




//combo_control()
//airborne combos here
//air_combo_control()
//hookshot code
//hookshot_control()
//auto_aim
//init_lock_on()
//what zero can and canont do during the attacks
//init_restrictions()

//here lies basic jumps
//
//scr_zero_gun()

//hspeed for walljumping
scr_whole_movement()
//dash implementation
//init_dash()

//new placement
//basic jumps
jumps_script()

//new cool feature
scr_init_teleport()

//timer for attack management
//init_attack_timer()
//old lacement colliions
//knockback ends
scr_zero_knockback_ends()

//knockback inplementation new
init_knockback()

//jump cancel new
//init_zero_jc()



//horizontal and vertical collisions
init_zero_collisions()  
//jump cancel old
//init_zero_jc()
// variable jump height
init_zero_jump()
//old statemachines
//statemachine mostly here
smooth_transitions_new()
//knockback inplementation old

scr_init_skeleton()

//camera
init_camera()  

//deprecated transition
//transition_by_frames()
//player animation
scr_player_animations()
//gravity manipulation for aircombos
init_zero_gravity()

//init_knockback()
scr_shoot_alt()

  

//afterimage for dashes and such
//init_afterimage_effect()

set_whole_volume()

scr_dead_behaviour()

/*
if(y>3000)
    {
    room_restart()
    }
*/    
scr_transfer_info_to_controller()
    
scr_zero_destroyed()

    

