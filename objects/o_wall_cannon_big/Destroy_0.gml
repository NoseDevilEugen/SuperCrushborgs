/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target))
	{
	instance_destroy(target)
	}
	
scr_add_score_to_one()

fn_on_destroy()



var my_head=instance_create(x, y, o_richter_head)

with(my_head)
	{
	sprite_index=s_straight_cannon_idle
	image_xscale=other.image_xscale
	hsp=0
	vsp=0
	}

