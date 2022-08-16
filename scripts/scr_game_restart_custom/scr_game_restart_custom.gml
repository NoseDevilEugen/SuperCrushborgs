// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_restart_custom(){
	room_speed=60
	instance_destroy(o_controller)
	instance_destroy(o_pause)
	instance_destroy(o_camera)
	game_restart()
}