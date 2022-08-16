/// @description Insert description here
// You can write your code in this editor

image_speed=0

if(exp_number>0)
	{
	if(exp_drawn==false)
		{
		exp_number=exp_number-1
		exp_drawn=true
		if(exp_number==0)
			{
			with(instance_create(x, y, o_special_fx))
				{
				depth=other.depth-1
				parent=other
				sprite_index=s_sfx_explosion
				image_index=0
				image_speed=0.2
				}
			}
		else
			{
			with(instance_create(irandom_range(bbox_left, bbox_right), irandom_range(bbox_bottom, bbox_top), o_special_fx))
				{
				depth=other.depth-1
				parent=other
				sprite_index=s_sfx_explosion
				image_index=0
				image_speed=0.2
				}
			}
		}
	}
else
	{
	instance_destroy(id)
	}