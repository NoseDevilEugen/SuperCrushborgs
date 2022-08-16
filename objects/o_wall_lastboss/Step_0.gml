/// @description Insert description here
// You can write your code in this editor


if(cannon_reset==-1 && instance_number(o_wall_lastboss_eye)<=0)
	{
	/*
	cannon1=instance_create(x+sprite_width/5, o_camera.screen_top+190, o_wall_lastboss_cannon)
	with(cannon1)
		{
		hp=50
		}
	cannon2=instance_create(x+sprite_width/5, 210, o_wall_lastboss_cannon)
	with(cannon2)
		{
		hp=50
		}
	*/
	
	with(instance_create(x-9, o_camera.screen_top+230, o_wall_lastboss_cannon))
		{
		shoot_timer=120
		}
	
	with(instance_create(x-9, o_camera.screen_top+250, o_wall_lastboss_cannon))
		{
		shoot_timer=240
		}
	
	
	
	cannon_reset=60
	cannon_timer=cannon_reset
	}
	
/*
if(cannon_timer>0)
	{
	cannon_timer=cannon_timer-1
	}
else if(cannon_timer!=-1)
	{
	cannon_timer=cannon_reset
	if(cannon_count<23 && cannon_count>-1)
		{
		if(instance_exists(cannon_arr[cannon_count]))
			{
			with(instance_create(cannon_arr[cannon_count].x, cannon_arr[cannon_count].y, o_joe_spreadgun_bullet))
				{
				hsp=-7
				vsp=0
				}
			}
		cannon_count=cannon_count+sub
		}
	else
		{
		sub=sub*-1
		if(cannon_count>=23)
			{
			cannon_count=22
			}
		if(cannon_count<=-1)
			{
			cannon_count=0
			}
				
		}
	}
*/

if(instance_number(o_wall_lastboss_cannon)<=0 && instance_number(o_wall_lastboss_eye)<=0)
	{
	instance_destroy(o_spike_wall)
	instance_destroy(o_wall_lastboss_bomb)
	instance_destroy(o_wall_lastboss_eye)
	instance_destroy(o_wall_lastboss_bomb_throw)
	instance_destroy(o_joe_spreadgun_bullet)
	instance_destroy(o_barrel_destroyer)
	scr_boss_death(sprite_index, 5, my_next_room)
	
	}
	