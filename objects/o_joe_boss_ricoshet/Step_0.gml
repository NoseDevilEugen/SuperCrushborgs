/// @description Insert description here
// You can write your code in this editor



if(count>0)
	{
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		player_direction=point_direction(x, y, o_controller.player.x+(o_controller.player.hsp*2), o_controller.player.y+(o_controller.player.vsp*2))
		hsp=lengthdir_x(bullet_speed, player_direction)
		vsp=lengthdir_y(bullet_speed, player_direction)
		count=count-1
		}
	}
	
x=x+hsp

if(count>0)
	{
	if(place_meeting(x, y+vsp, o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		player_direction=point_direction(x, y, o_controller.player.x+(o_controller.player.hsp*2), o_controller.player.y+(o_controller.player.vsp*2))
		hsp=lengthdir_x(bullet_speed, player_direction)
		vsp=lengthdir_y(bullet_speed, player_direction)
		count=count-1
		}
	}
y=y+vsp


/*
if(instance_exists(afterimage1))
	{
	afterimage1.x=lerp(afterimage1.x, x + distance_x, sticky)
    afterimage1.y=lerp(afterimage1.y, y + distance_y, sticky)
	}


if(instance_exists(afterimage2) && instance_exists(afterimage2))
	{
	afterimage2.x=lerp(afterimage2.x, afterimage1.x + distance_x, sticky)
    afterimage2.y=lerp(afterimage2.y, afterimage1.y + distance_y, sticky)
	}
*/
scr_destroy_projectile()
