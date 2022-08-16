/// @description Insert description here
// You can write your code in this editor

x=x+hsp

if(vsp<12)
	{
	vsp=vsp+grav
	}
	
y=y+vsp

if(y>o_camera.screen_bottom+16)
	{
	instance_destroy(id)
	}