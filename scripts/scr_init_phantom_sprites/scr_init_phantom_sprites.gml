// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_phantom_sprites(){
	
	s_array[phantom_actions.idle]=s_phantom_idle_new
	s_array[phantom_actions.jump]=s_phantom_jump_new
	s_array[phantom_actions.fall]=s_phantom_fall_new
	s_array[phantom_actions.dash]=s_phantom_dash_attack_new
	s_array[phantom_actions.kunai_throw]=s_phantom_kunai_throw_new
	s_array[phantom_actions.fuma_throm]=s_phantom_fuuma_throw_new
	s_array[phantom_actions.upward_attack]=s_phantom_upward_projectile_new
	s_array[phantom_actions.helmcrusher]=s_phantom_falling_attack_new
	s_array[phantom_actions.posthelmcrusher]=s_phantom_stuck_new
	s_array[phantom_actions.teleport]=s_phantom_teleport_new
	s_array[phantom_actions.rage]=s_phantom_rage_new
	
}