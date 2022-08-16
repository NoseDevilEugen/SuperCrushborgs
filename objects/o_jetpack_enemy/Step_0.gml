/// @description Insert description here
// You can write your code in this editor




if(jetpack_free==true)
	{
	
	orbit=orbit+1
	
	
	counter=(counter+(4*-image_xscale)) mod 360
	

	hsp=floor((lengthdir_x(orbit, counter)+x_center)-xprevious)
	vsp=floor((lengthdir_y(orbit, counter)+y_center)-yprevious)
	
	if(orbit>80)
		{
		instance_destroy(id)
		}
	
	if(place_meeting(x, y, o_player_skelet))
		{
		instance_destroy(id)
		}		
		
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=0
		instance_destroy(id)
		}
	
	x=x+floor(hsp)
	x=floor(x)

	if(place_meeting(x, y+floor(vsp), o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		vsp=0
		instance_destroy(id)
		}
	
	y=y+floor(vsp)
	y=floor(y)
	
	
	}
	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	instance_destroy(id)
	if(instance_exists(target))
		{
		instance_destroy(target)
		}
	}