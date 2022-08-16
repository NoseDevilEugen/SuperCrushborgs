/// @description Insert description here
// You can write your code in this editor

if(instance_get_id!=noone)
	{
	if(instance_exists(instance_get_id))
		{
		instance_destroy(instance_get_id)
		}
	instance_create_layer(o_camera.screen_left, 0, "depth_portals", o_firewall)
	}