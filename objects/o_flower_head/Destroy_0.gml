/// @description Insert description here
// You can write your code in this editor
with(instance_create(x, y, o_flower_list))
	{
	counter=10
	sub=1
	vsp=-7
	hsp=-4
	}
with(instance_create(x, y, o_flower_list))
	{
	sub=1
	vsp=-7
	hsp=-2
	}
with(instance_create(x, y, o_flower_list))
	{
	counter=20
	sub=-1
	vsp=-7
	hsp=4
	}
with(instance_create(x, y, o_flower_list))
	{
	counter=40
	sub=-1
	vsp=-7
	hsp=2
	}
	
with(instance_create(x, y, o_special_fx))
	{
	image_index=other.image_index
	image_xscale=other.image_xscale
	image_yscale=other.image_yscale
	image_speed=0.2
	sprite_index=s_sfx_explosion
	}