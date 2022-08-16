/// @description Insert description here
// You can write your code in this editor

firepower=0

counter=counter+1

angle += (orb_speed * 1)
if(angle >= 360) 
	{
	angle -= 360
	}

orbit=orbit+6


// Update position
x = lengthdir_x(orbit, angle) + start_x
y = lengthdir_y(orbit, angle) + start_y

//sprite_index=s_machinegun_bullet_idle

	
//x=x+hsp
	

//y=y+vsp

	
if(point_distance(x, y, start_x, start_y)>450)
	{
	instance_destroy(id)
	}