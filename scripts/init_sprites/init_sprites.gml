// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_sprites(){
	s_array[primary_actions.idle]=s_panthebot_idle
	s_array[primary_actions.idle_up]=s_panthebot_idle_up
	s_array[primary_actions.idle_diagonal_up]=s_panthebot_idle_diagonal_up
	s_array[primary_actions.idle_diagonal_down]=s_panthebot_idle_diagonal_down
	s_array[primary_actions.idle_down]=s_panthebot_idle_down
	s_array[primary_actions.run]=s_panthebot_run
	s_array[primary_actions.run_up]=s_panthebot_run_diagonal_up
	s_array[primary_actions.run_down]=s_panthebot_run_diagonal_down          
	s_array[primary_actions.duck]=s_panthebot_idle_duck
	s_array[primary_actions.jump]=s_panthebot_jump
	s_array[primary_actions.fall]=s_panthebot_jump
	s_array[primary_actions.dropped]=s_panthebot_jump      
	s_array[primary_actions.twohand]=s_main_twohand_stance         
	s_array[primary_actions.wallcling]=s_panthebot_wall_idle
	s_array[primary_actions.wallcling_up]=s_panthebot_wall_idle_up
	s_array[primary_actions.wallcling_up_diagonal]=s_panthebot_wall_idle_diagonal_up
	s_array[primary_actions.wallcling_down]=s_panthebot_wall_idle_down
	s_array[primary_actions.wallcling_down_diagonal]=s_panthebot_wall_idle_diagonal_down
	s_array[primary_actions.wallmove]=s_panthebot_wall_climb
	s_array[primary_actions.ceiling]=s_panthebot_ceiling 
	s_array[primary_actions.ceiling_move]=s_panthebot_ceiling_move
	s_array[primary_actions.ceiling_up]=s_panthebot_ceiling_up       
	s_array[primary_actions.ceiling_diagonal_up]=s_panthebot_ceiling_diagonal_up
	s_array[primary_actions.ceiling_diagonal_down]=s_panthebot_ceiling_diagonal_down      
	s_array[primary_actions.ceiling_down]=s_panthebot_ceiling_down       
	s_array[primary_actions.knockback]=s_panthebot_knockback     
	s_array[primary_actions.destroyed]=s_panthebot_destroyed      
	s_array[primary_actions.teleport]=s_main_teleport  
	s_array[primary_actions.teleport_end]=s_main_teleport  
	s_array[primary_actions.cutscene]=s_panthebot_caps_idle  
}