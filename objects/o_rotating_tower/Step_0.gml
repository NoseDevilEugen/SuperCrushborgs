/// @description Insert description here
// You can write your code in this editor

if(y<=room_height+32)
	{
	if(!place_meeting(x, y+1, o_rotating_tower) && created==false)
		{
		created=true
		with(instance_create_layer(x, bbox_bottom+1, "depth_controller", o_rotating_tower))
			{
			image_index=other.image_index+1
			}
		}
	}

if(o_controller.player.hsp_final>0)
	{
	image_index=image_index-1
	}
	
if(o_controller.player.hsp_final<0)
	{
	image_index=image_index+1
	}

//x=o_controller.player.x
x=o_camera.screen_left + (__view_get( e__VW.WView, view_current )/2)



//scr_destroy_projectile()
	
/*
if(y>o_camera.screen_top+512)
	{
	y=o_camera.screen_top
	}
	
if(y<o_camera.screen_top)
	{
	y=o_camera.screen_top+512
	}
*/