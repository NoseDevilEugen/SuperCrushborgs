/// @description Insert description here
// You can write your code in this editor
//instance_deactivate_object(id)
if(bbox_right<o_camera.screen_left-900)
	{
	instance_destroy(id)
	}
	
if(rocket_timer>0)
	{
	rocket_timer=rocket_timer-1
	}
else
	{
	rocket_timer=120
	
	with(instance_create(x, bbox_bottom+8+irandom_range(-6, 6), o_rope_moving))
		{
		image_xscale=3
		hsp=1
		}
	
	}