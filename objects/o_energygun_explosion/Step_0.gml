/// @description Insert description here
// You can write your code in this editor

if(onscreen==false)
	{
	if(x>o_camera.screen_left
	&& x<o_camera.screen_right
	&& y>o_camera.screen_top
	&& y<o_camera.screen_bottom)
		{
		onscreen=true
		}
	}
	
timer=timer+1

//sprite_index=s_machinegun_bullet_idle

	
x=x+hsp
	

y=y+vsp

if(timer>=8)
	{
	//show_message(y)
	instance_destroy(id)
	}
	
scr_destroy_projectile()