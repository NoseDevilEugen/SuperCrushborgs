/// @description Insert description here
// You can write your code in this editor
onscreen=false
bullet_speed=9
firepower=2
bullet_catched=false
orbit=0
angle=0
closing_speed=0
current_dir=0

scale=0

ricoshet=6

stuck_timer=0
stuck_timer_reset=0

hsp=0
vsp=0

add_hsp=0
add_vsp=0



sprite_index=s_shinobot_l_bullet
image_speed=0.5

with(instance_create(x, y, o_special_fx))
	{
	sprite_index=s_shinobot_e_explosion
	image_speed=1
	}