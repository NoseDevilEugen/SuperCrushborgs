/// @description Insert description here
// You can write your code in this editor

if(x>o_camera.screen_left-32
&& x<o_camera.screen_right+32
&& y>o_camera.screen_top-32 
&& y<o_camera.screen_bottom+32)
    {
	AI_active=true
    }

if(AI_active==true)
	{
	
	scr_change_focus()
	
	player_dir=point_direction(x, y, player.x+player.hsp_final, player.y+player.vsp)

	if(action==fly_actions.horizontal)
		{
		if(sign(hsp)<0)
			{
			if(x<=__view_get(e__VW.XView, view_current)+32 || place_meeting(x+hsp, y, o_floor))
				{
				hsp=lengthdir_x(4, 0)
				vsp=lengthdir_y(4, 0)
				}
			}
		if(sign(hsp)>0 )
			{
			if(x>=__view_get(e__VW.XView, view_current)+__view_get( e__VW.WView, view_current )-32 || place_meeting(x+hsp, y, o_floor))
				{
				hsp=lengthdir_x(4, 180)
				vsp=lengthdir_y(4, 180)
				}
			}
		}
		
	if(timer_bomb>0)
		{
		timer_bomb=timer_bomb-1
		}
	else
		{
		if(abs(x-player.x)<60)
			{
			with(instance_create(x, y+10, o_joe_boss_grenade))
				{
				sprite_index=s_fly_egg
				hsp=0
				vsp=0
				}
			timer_bomb=120
			}
		}

	x=x+floor(hsp)

	y=y+floor(vsp)

	if(instance_exists(target))
		{
		target.x=x
		target.y=y
		}

	if(sign(hsp)!=0)
		{
		image_xscale=sign(hsp)
		}
	sprite_index=s_array[action]

	
	
	//scr_soldier_get_damage(sprite_index, s_sfx_explosion)
		
	}
	
hp=scr_boss_get_damage(hp)

if(hp<=0 || place_meeting(x, y, o_floor))
	{
	scr_soldier_death(s_fly_horizontal_2, s_sfx_explosion)
	}

	