/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


//sprite_index=s_machinegun_bullet_idle	


if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	vsp=0
	}
x=x+floor(hsp)
x=floor(x)
	
if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	hsp=0
	vsp=0
	}
y=y+floor(vsp)
y=floor(y)
	
image_angle=dir-90
	
if(hsp=0 && vsp=0)
	{
	timer=timer+1
	}
	
if(timer>=10)
	{
	instance_destroy()
	}
	
//timer=timer+1	
	
	
	



	
if(x<o_camera.screen_left-64 
|| x>o_camera.screen_right+64
|| y<o_camera.screen_top-64 
|| y>o_camera.screen_bottom+64)
    {
    instance_destroy(id)
    }