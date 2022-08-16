/// @description Insert description here
// You can write your code in this editor



if(bbox_left>=o_camera.screen_left
&& bbox_top>=o_camera.screen_top
&& bbox_right<=o_camera.screen_right
&& bbox_bottom<=o_camera.screen_bottom)
	{
	if(place_meeting(x, y, o_main_player))
		{
		instance_destroy(id)
		}
	}
