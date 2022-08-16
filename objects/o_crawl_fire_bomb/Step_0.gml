/// @description Insert description here
// You can write your code in this editor

x=x+round(hsp)



y=y+round(vsp)

if(place_meeting(x, y+1, o_floor))
	{
	with(instance_create_layer(irandom_range(bbox_left+32, bbox_right-32), irandom_range(bbox_top+32, bbox_bottom-32), "Bullets", o_special_fx_explosion))
			{
			sprite_index=s_explosion_blue
			timer=0
			timer_ends=image_number
			}
	instance_destroy(id)
	with(instance_create(x, y, o_crawl_fire))
		{
		//timer=instance_place(other.x, other.y+1, o_floor).timer
		while(place_meeting(x, y, o_floor))
			{
			y=y-1
			}
		while(!place_meeting(x, y+1, o_floor))
			{
			y=y+1
			}
		}
	with(instance_create(x, y, o_crawl_fire))
		{
		//timer=instance_place(other.x, other.y+1, o_floor).timer
		left=true
		while(place_meeting(x, y, o_floor))
			{
			y=y-1
			}
		while(!place_meeting(x, y+1, o_floor))
			{
			y=y+1
			}
		}	
	}
	
if(y>o_camera.camera_border_bottom)
	{
	instance_destroy(id)
	}