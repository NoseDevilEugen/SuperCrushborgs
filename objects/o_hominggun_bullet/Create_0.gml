/// @description Insert description here
// You can write your code in this editor

onscreen=false
bullet_speed=8
timer=0
hsp=0
vsp=0
firepower=1.5


bullet_catched=false
orbit=0
angle=0
closing_speed=0

image_index=irandom_range(0,10)
	
if(hsp!=0 && parent.hsp!=0  && sign(hsp)==sign(parent.hsp))
	{
	add_hsp=floor(parent.hsp_final)
	}
else
	{
	add_hsp=0
	}



if(vsp!=0 && parent.vsp!=0  &&sign(vsp)==sign(parent.vsp))
	{
	add_vsp=floor(parent.vsp)
	}
else
	{
	add_vsp=0
	}


//image_index=0
sprite_index=s_panthebot_h_bullet
image_speed=0.2