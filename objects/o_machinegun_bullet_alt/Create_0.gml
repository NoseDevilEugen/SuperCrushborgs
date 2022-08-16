/// @description Insert description here
// You can write your code in this editor

onscreen=false
bullet_speed=10
firepower=2.5
hsp=0
vsp=0

bullet_catched=false
orbit=0
angle=0
closing_speed=0

if(hsp!=0 && parent.hsp!=0 && sign(hsp)==sign(parent.hsp))
	{
	add_hsp=floor(parent.hsp_final)
	}
else
	{
	add_hsp=0
	}
	
if(vsp!=0 && parent.vsp!=0 && sign(vsp)==sign(parent.vsp))
	{
	add_vsp=floor(parent.vsp)
	}
else
	{
	add_vsp=0
	}



sprite_index=s_shinobot_m_bullet
image_speed=0.5