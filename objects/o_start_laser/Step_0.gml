/// @description Insert description here
// You can write your code in this editor

create_laser=true

if(lasers>0
&& create_laser==true)
	{
	lasers=lasers-1
	create_laser=false
	//audio_play_sound(sfx_laser, 10, false)
	with(instance_create_layer(x, y, "Bullets", o_lasergun_bullet))
		{
		parent=other.parent
		
		hsp=lengthdir_x(bullet_speed, other.bullet_dir)
		vsp=lengthdir_y(bullet_speed, other.bullet_dir)
		if(hsp!=0 && vsp!=0)
			{
			if(hsp>0)
				{
				if(vsp<0)
					{
					image_angle=0
					}
				else if(vsp>0)
					{
					image_angle=90
					}
				}
			else if(hsp<0)
				{
				if(vsp<0)
					{
					image_angle=270
					}
				else if(vsp>0)
					{
					image_angle=0
					}
				}
			image_index=1
			}
		else
			{
			image_angle=other.bullet_dir
			image_index=0
			}
		
		}
	}
	
if(lasers<=0)
	{
	instance_destroy()
	}