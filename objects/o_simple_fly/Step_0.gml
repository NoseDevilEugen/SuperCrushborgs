/// @description Insert description here
// You can write your code in this editor

if(x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
	AI_active=true
    }

image_xscale=image_xscale*-1

if(AI_active==true)
	{
	
	scr_change_focus()
	
	player_dir=point_direction(x, y, player.x+player.hsp_final, player.y+player.vsp)
	
	if(action==fly_actions.horizontal)
		{
			
		if(place_meeting(x+round(hsp), y, o_floor))
			{
			hsp=hsp*-1
			}
			
		if(sign(hsp)<0)
			{
			if(x<=__view_get(e__VW.XView, view_current)+32
			|| place_meeting(x+round(hsp), y, o_floor))
				{
				
				hsp=lengthdir_x(4, player_dir)
				vsp=lengthdir_y(4, player_dir)
				action=fly_actions.vertical
				}
			}
		if(sign(hsp)>0)
			{
			if(x>=__view_get(e__VW.XView, view_current)+__view_get( e__VW.WView, view_current )-32
			|| place_meeting(x+round(hsp), y, o_floor))
				{
				hsp=lengthdir_x(4, player_dir)
				vsp=lengthdir_y(4, player_dir)
				action=fly_actions.vertical
				}
			}
		}
	x=x+floor(hsp)
	
	if(action==fly_actions.vertical)
		{
		if(place_meeting(x+round(hsp), y, o_floor))
			{
			hsp=hsp*-1
			action=fly_actions.horizontal
			}
		if(place_meeting(x, y+round(vsp), o_floor))
			{
			vsp=0
			action=fly_actions.horizontal
			}
		if(sign(vsp)<0)
			{
			if(y<=__view_get(e__VW.YView, view_current)+16 
			|| x<=__view_get(e__VW.XView, view_current)-16
			|| x>=__view_get(e__VW.XView, view_current)+__view_get( e__VW.WView, view_current )+16)
				{
				if(x<__view_get(e__VW.XView, view_current)+(__view_get( e__VW.WView, view_current )/2))
					{
					hsp=lengthdir_x(3, 0)
					}
				if(x>=__view_get(e__VW.XView, view_current)+(__view_get( e__VW.WView, view_current )/2))
					{
					hsp=lengthdir_x(3, 180)
					}
				vsp=0
				action=fly_actions.horizontal
				}
			}
		if(sign(vsp)>0)
			{
			if(y>=__view_get(e__VW.YView, view_current)+__view_get( e__VW.HView, view_current )-16 
			|| x<=__view_get(e__VW.XView, view_current)-16
			|| x>=__view_get(e__VW.XView, view_current)+__view_get( e__VW.WView, view_current )+16)
				{
				if(x<__view_get(e__VW.XView, view_current)+(__view_get( e__VW.WView, view_current )/2))
					{
					hsp=lengthdir_x(3, 0)
					}
				if(x>=__view_get(e__VW.XView, view_current)+(__view_get( e__VW.WView, view_current )/2))
					{
					hsp=lengthdir_x(3, 180)
					}
				vsp=0
				action=fly_actions.horizontal
				}
			}
		}
	y=y+floor(vsp)
	}





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


hp=scr_boss_get_damage(hp)

if(hp<=0 || place_meeting(x, y, o_floor))
	{
	scr_soldier_death(s_fly_horizontal, s_sfx_explosion)
	}