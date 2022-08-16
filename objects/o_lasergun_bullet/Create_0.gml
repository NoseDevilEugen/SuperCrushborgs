/// @description Insert description here
// You can write your code in this editor

onscreen=false
bullet_speed=8
firepower=1.4

hsp=0
vsp=0

bullet_catched=false

orbit=0

angle=0
closing_speed=0

add_hsp=0
add_vsp=0

sprite_index=s_panthebot_l_bullet
image_speed=0

if(hsp!=0 && vsp!=0)
	{
	image_index=1
	}
else
	{
	image_index=0
	}
	
with(instance_create(x, y, o_special_fx))
	{
	sprite_index=s_panthebot_e_explosion
	image_speed=1
	}