function init_sprites_alt() {
	//test sprite array
	s_array[primary_actions.idle]=s_shinobot_idle
	s_array[primary_actions.idle_up]=s_shinobot_idle_up
	s_array[primary_actions.idle_diagonal_up]=s_shinobot_idle_diagonal_up
	s_array[primary_actions.idle_diagonal_down]=s_shinobot_idle_diagonal_down
	s_array[primary_actions.idle_down]=s_shinobot_idle_down
	s_array[primary_actions.run]=s_shinobot_run
	s_array[primary_actions.run_up]=s_shinobot_run_diagonal_up
	s_array[primary_actions.run_down]=s_shinobot_run_diagonal_down          
	s_array[primary_actions.duck]=s_shinobot_idle_duck
	s_array[primary_actions.jump]=s_shinobot_jump
	s_array[primary_actions.fall]=s_shinobot_jump
	s_array[primary_actions.dropped]=s_shinobot_jump      
	s_array[primary_actions.twohand]=s_main_twohand_stance         
	s_array[primary_actions.wallcling]=s_shinobot_wall_idle
	s_array[primary_actions.wallcling_up]=s_shinobot_wall_idle_up
	s_array[primary_actions.wallcling_up_diagonal]=s_shinobot_wall_idle_diagonal_up
	s_array[primary_actions.wallcling_down]=s_shinobot_wall_idle_down
	s_array[primary_actions.wallcling_down_diagonal]=s_shinobot_wall_idle_diagonal_down
	s_array[primary_actions.wallmove]=s_shinobot_wall_climb
	s_array[primary_actions.ceiling]=s_shinobot_ceiling 
	s_array[primary_actions.ceiling_move]=s_shinobot_ceiling_move
	s_array[primary_actions.ceiling_up]=s_shinobot_ceiling_up       
	s_array[primary_actions.ceiling_diagonal_up]=s_shinobot_ceiling_diagonal_up
	s_array[primary_actions.ceiling_diagonal_down]=s_shinobot_ceiling_diagonal_down      
	s_array[primary_actions.ceiling_down]=s_shinobot_ceiling_down       
	s_array[primary_actions.knockback]=s_shinobot_knockback     
	s_array[primary_actions.destroyed]=s_shinobot_destroyed      
	s_array[primary_actions.teleport]=s_main_teleport  
	s_array[primary_actions.teleport_end]=s_main_teleport   
	s_array[primary_actions.cutscene]=s_shinobot_caps_idle  

}
