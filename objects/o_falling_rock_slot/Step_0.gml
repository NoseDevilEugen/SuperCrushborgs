/// @description Insert description here
// You can write your code in this editor

if(image_speed==0 && image_index==0)
	{
	if(x<=o_camera.screen_left+360)
		{
		image_speed=0.2
		}
	}
	
if(image_index>=image_number-1 && image_speed!=0)
	{
	image_index=image_number-image_speed
	image_speed=0
	with(instance_create_layer(x, y, "Bullets", o_small_fireball))
		{
		sprite_index=other.rock_array[other.sprite_index]
		hsp=0
		vsp=0
		}
	}