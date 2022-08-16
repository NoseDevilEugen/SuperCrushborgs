/// @description Insert description here
// You can write your code in this editor

create_laser=true

if(lasers>0
&& create_laser==true)
	{
	lasers=lasers-1
	create_laser=false
	with(instance_create_layer(x, y, "Bullets", o_joe_lasergun_bullet))
		{
		image_angle=other.bullet_dir
		hsp=lengthdir_x(bullet_speed, other.bullet_dir)
		vsp=lengthdir_y(bullet_speed, other.bullet_dir)
		}
	}
	
if(lasers<=0)
	{
	instance_destroy()
	}