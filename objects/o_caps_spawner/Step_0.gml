/// @description Insert description here
// You can write your code in this editor



if(sprite_index==s_blob_caps_idle)
	{
	if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, o_main_player, false, false)!=noone)
		{

		spawn_hsp=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, o_main_player, false, false).image_xscale
		if(timer==-1)
			{
			timer=30
			}
		}
	}

if(timer>0)
	{
	timer=timer-1
	}
if(timer==0)
	{
	timer=-1
	sprite_index=s_blob_caps_form
	}
	
if(sprite_index==s_blob_caps_form)
	{
	if(image_index>=image_number-1)
		{
		sprite_index=s_blob_caps_empty
		with(instance_create_layer((bbox_right+bbox_left)/2, bbox_bottom, "depth_player", o_jija))
			{
			image_xscale=other.spawn_hsp
			}
		}

	//instance_create(bbox_right+bbox_left/2, bbox_bottom, born)
	}