function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 6; // o_controller
	global.__objectDepths[1] = 0; // o_spawner
	global.__objectDepths[2] = 0; // o_soldier_spawner
	global.__objectDepths[3] = 0; // o_hurtbox
	global.__objectDepths[4] = 0; // o_soldier_bullet
	global.__objectDepths[5] = 0; // o_player_bullet
	global.__objectDepths[6] = 0; // o_faust_bullet
	global.__objectDepths[7] = 0; // o_faust_aoe_bullet
	global.__objectDepths[8] = 0; // o_dummy_hitbox
	global.__objectDepths[9] = 0; // o_lightbulb
	global.__objectDepths[10] = 0; // o_electric_barrier
	global.__objectDepths[11] = 0; // o_electric_line
	global.__objectDepths[12] = 0; // o_hazard
	global.__objectDepths[13] = 0; // o_spike_ceiling
	global.__objectDepths[14] = 0; // o_spike_wall
	global.__objectDepths[15] = 0; // o_acid
	global.__objectDepths[16] = 2; // o_floor
	global.__objectDepths[17] = 2; // o_block_door
	global.__objectDepths[18] = 2; // o_floor_moving
	global.__objectDepths[19] = 2; // o_floor_moving_ver
	global.__objectDepths[20] = 5; // o_one_way_floor
	global.__objectDepths[21] = 0; // o_slope_platform
	global.__objectDepths[22] = 0; // o_slope_mirror
	global.__objectDepths[23] = 0; // o_slope_ceiling
	global.__objectDepths[24] = 0; // o_slope_ceiling_mirror
	global.__objectDepths[25] = 0; // o_floor_conv
	global.__objectDepths[26] = 0; // o_floor_conv_mirrored
	global.__objectDepths[27] = 0; // o_portal_in
	global.__objectDepths[28] = 0; // o_portal_out
	global.__objectDepths[29] = 0; // o_soldier_spear
	global.__objectDepths[30] = 0; // o_humanoid
	global.__objectDepths[31] = 3; // o_player
	global.__objectDepths[32] = 0; // o_main_hud
	global.__objectDepths[33] = 0; // o_stopper
	global.__objectDepths[34] = 2; // o_sword
	global.__objectDepths[35] = 3; // o_hookshot
	global.__objectDepths[36] = 2; // o_gun
	global.__objectDepths[37] = 1; // o_crosshair
	global.__objectDepths[38] = 3; // o_hitbox
	global.__objectDepths[39] = 5; // o_player_explosion
	global.__objectDepths[40] = 0; // o_enemy
	global.__objectDepths[41] = 0; // o_particle_blood
	global.__objectDepths[42] = 2; // o_soldier
	global.__objectDepths[43] = 2; // o_heavy_pantheon
	global.__objectDepths[44] = 2; // o_faust
	global.__objectDepths[45] = 0; // o_faust_face
	global.__objectDepths[46] = 4; // o_wind
	global.__objectDepths[47] = 4; // o_roulette_wind
	global.__objectDepths[48] = 6; // o_afterimage
	global.__objectDepths[49] = 0; // o_portal
	global.__objectDepths[50] = 0; // o_invis_floor
	global.__objectDepths[51] = 0; // o_menu_text
	global.__objectDepths[52] = 0; // o_sound_menu
	global.__objectDepths[53] = 0; // o_key_config_menu
	global.__objectDepths[54] = 0; // o_gamepad_config_menu
	global.__objectDepths[55] = 0; // o_menu_pointer
	global.__objectDepths[56] = 0; // o_projectile


	global.__objectNames[0] = "o_controller";
	global.__objectNames[1] = "o_spawner";
	global.__objectNames[2] = "o_soldier_spawner";
	global.__objectNames[3] = "o_hurtbox";
	global.__objectNames[4] = "o_soldier_bullet";
	global.__objectNames[5] = "o_player_bullet";
	global.__objectNames[6] = "o_faust_bullet";
	global.__objectNames[7] = "o_faust_aoe_bullet";
	global.__objectNames[8] = "o_dummy_hitbox";
	global.__objectNames[9] = "o_lightbulb";
	global.__objectNames[10] = "o_electric_barrier";
	global.__objectNames[11] = "o_electric_line";
	global.__objectNames[12] = "o_hazard";
	global.__objectNames[13] = "o_spike_ceiling";
	global.__objectNames[14] = "o_spike_wall";
	global.__objectNames[15] = "o_acid";
	global.__objectNames[16] = "o_floor";
	global.__objectNames[17] = "o_block_door";
	global.__objectNames[18] = "o_floor_moving";
	global.__objectNames[19] = "o_floor_moving_ver";
	global.__objectNames[20] = "o_one_way_floor";
	global.__objectNames[21] = "o_slope_platform";
	global.__objectNames[22] = "o_slope_mirror";
	global.__objectNames[23] = "o_slope_ceiling";
	global.__objectNames[24] = "o_slope_ceiling_mirror";
	global.__objectNames[25] = "o_floor_conv";
	global.__objectNames[26] = "o_floor_conv_mirrored";
	global.__objectNames[27] = "o_portal_in";
	global.__objectNames[28] = "o_portal_out";
	global.__objectNames[29] = "o_soldier_spear";
	global.__objectNames[30] = "o_humanoid";
	global.__objectNames[31] = "o_player";
	global.__objectNames[32] = "o_main_hud";
	global.__objectNames[33] = "o_stopper";
	global.__objectNames[34] = "o_sword";
	global.__objectNames[35] = "o_hookshot";
	global.__objectNames[36] = "o_gun";
	global.__objectNames[37] = "o_crosshair";
	global.__objectNames[38] = "o_hitbox";
	global.__objectNames[39] = "o_player_explosion";
	global.__objectNames[40] = "o_enemy";
	global.__objectNames[41] = "o_particle_blood";
	global.__objectNames[42] = "o_soldier";
	global.__objectNames[43] = "o_heavy_pantheon";
	global.__objectNames[44] = "o_faust";
	global.__objectNames[45] = "o_faust_face";
	global.__objectNames[46] = "o_wind";
	global.__objectNames[47] = "o_roulette_wind";
	global.__objectNames[48] = "o_afterimage";
	global.__objectNames[49] = "o_portal";
	global.__objectNames[50] = "o_invis_floor";
	global.__objectNames[51] = "o_menu_text";
	global.__objectNames[52] = "o_sound_menu";
	global.__objectNames[53] = "o_key_config_menu";
	global.__objectNames[54] = "o_gamepad_config_menu";
	global.__objectNames[55] = "o_menu_pointer";
	global.__objectNames[56] = "o_projectile";


	// create another array that has the correct entries
	var len = array_length(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
