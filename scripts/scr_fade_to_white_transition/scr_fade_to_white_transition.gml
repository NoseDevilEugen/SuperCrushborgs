// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fade_to_white_transition(target_room){

with(instance_create_layer(o_camera.screen_left, o_camera.screen_top, "depth_portals", o_fade_out_white))
	{
	room_to_go=target_room
	}

room_instance_add(target_room, o_camera.screen_left, o_camera.screen_top, o_fade_in_white)

}