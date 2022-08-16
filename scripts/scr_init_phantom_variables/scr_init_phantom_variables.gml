// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_phantom_variables(){
	
	my_next_room=room_area_pendulum_boss
	player_change_timer=1
	player=o_controller.player1
	hsp=0
	vsp=0
	
	hit_timer=0
	
	target=instance_create(x, y, o_homing_aim)
	
	
	image_index=0
	image_speed=0.2
	
	helmcrusher_timer=0
	teleport_timer=0
	
	phase=1
	
	dash_timer=0
	fuma_timer=0
	
	helm_timer=0
	
	hp=400
	
	//phase=0
	
	image_xscale=-1
	
	action=phantom_actions.idle
	
	grav=0.25
	
	t_array[phantom_actions.idle]="idle"
	t_array[phantom_actions.jump]="jump"
	t_array[phantom_actions.fall]="fall"
	t_array[phantom_actions.dash]="attack"
	t_array[phantom_actions.kunai_throw]="kunai_throw"
	t_array[phantom_actions.fuma_throm]="fuuma_throw"
	t_array[phantom_actions.upward_attack]="upward_projectile"
	t_array[phantom_actions.helmcrusher]="falling_attack"
	t_array[phantom_actions.posthelmcrusher]="stuck"
	t_array[phantom_actions.teleport]="teleport"
	t_array[phantom_actions.rage]="rage"
	
}