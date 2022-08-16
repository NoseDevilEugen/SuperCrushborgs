// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_explosion(){
		
	if(key_gun_released 
	&& exp_charge>=60
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& state!=states.dead)
	//&& state!=states.wallcling
	//&& state!=states.ceiling)
		{
		
		with(instance_create(o_camera.screen_left, o_camera.screen_top, o_screen_clearing))
			{
			parent=other.id
			}
		
		o_camera.shake_counter=30
		audio_play_sound(o_controller.sound_array[3], 1, false)
		exp_charge=0
		var i
		for(i=0; i<18; i++)
			{			
			with(instance_create_layer(x, y, "Bullets", o_screen_explosion))
				{
				parent=other.id
				start_x=other.x
				start_y=other.y
				x=other.x+lengthdir_x(20, 20*i)
				y=other.y+lengthdir_y(20, 20*i)
				angle=point_direction(x, y, other.x, other.y)
				}
			}
		if(primary_action==primary_actions.cutscene)
			{
			
			//o_camera.camera_border_bottom=o_camera.screen_bottom
			//o_camera.camera_border_left=o_camera.screen_left
			
			if(!audio_is_playing(o_controller.music_array[0]))
				{
				audio_play_sound(o_controller.music_array[0], 1, true)
				}
			global.background_music=o_controller.music_array[0]
			
			//show_message(string(layer_get_visible("depth_blocks"))+string(layer_get_visible("depth_newest")))
				
			with(instance_create_layer(x, y, "depth_newest", o_player_caps))
				{
				sprite_index=s_panthebot_caps_explode
				}
			primary_action=primary_actions.jump
			ow_p=false
			vsp = -jumpspeed
			move=1
			last_move=1
			}
			
		}

}