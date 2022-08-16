/// @description Insert description here
// You can write your code in this editor




x=x+hsp

//y=y+vsp



tilemap_x(my_tilemap, x)
tilemap_y(my_tilemap, y)

if(exploding==true)
	{
	
	if(exploding_timer>0)
		{
		exploding_timer=exploding_timer-1
		}
	else
		{
		exploding_timer=10
		if(o_camera.screen_left<bbox_left)
			{
			o_camera.shake_counter=10
			with(instance_create_layer(irandom_range(bbox_left+32, bbox_right-32), irandom_range(bbox_top+32, bbox_bottom-32), "Bullets", o_special_fx_explosion))
				{
				sprite_index=s_ship_explosion
				timer=0
				timer_ends=image_number
				}
			}
		else
			{
			o_camera.shake_counter=10
			with(instance_create_layer(irandom_range(o_camera.screen_left+32, bbox_right-32), irandom_range(bbox_top+32, bbox_bottom-32), "Bullets", o_special_fx_explosion))
				{
				sprite_index=s_ship_explosion
				timer=0
				timer_ends=image_number
				}
			
			}
		}
	}



