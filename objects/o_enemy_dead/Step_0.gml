/// @description Insert description here
// You can write your code in this editor

if(sprite_index!=spr_exp)
	{
	image_speed=0
	y=y+vsp	
	if(vsp<1)
		{
		vsp=vsp+grav
		}
	
	if(vsp>=0)
		{
		audio_play_sound(o_controller.sound_array[14], 10, false)
		image_index=0
		sprite_index=spr_exp
		}
	}
	
else
	{
	image_speed=0.2
	vsp=0
	hsp=0
	if(image_index>=image_number-image_speed)
		{
		instance_destroy(id)
		}
	}
