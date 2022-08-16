/// @description Insert description here
// You can write your code in this editor

scr_change_focus()


if(x>o_camera.screen_left-32 
&& x<o_camera.screen_right+32
&& y>o_camera.screen_top-32 
&& y<o_camera.screen_bottom+32)
    {
    enemy_onscreen=true
	AI_active=true
    }


dir=point_direction(x, y, player.x, player.y)

if(AI_active==true)
	{
	if(sprite_index==s_mettaur_closed)
		{
		if(image_index>=image_number-image_speed)
			{
			sprite_index=s_mettaur_open
			image_index=0
			}	
		}
	}
	
if(vsp<=6
&& !place_meeting(x, y+1, o_floor)
&& !place_meeting(x, y+1, o_one_way_floor))
	{
	vsp=vsp+grav
	}

//locked=false
pushed_ver=false
pushed_hor=false

col=false


distance_to_player=abs(x-player.x)

if(distance_to_player>10)
	{
	image_xscale=sign(x-player.x)
	}
	



scr_init_conv_belt()	

scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)  


col_v=false 
scr_init_vertical_collisions()      	
scr_init_oneway_collisions()
scr_init_oneway_collisions_end()

y=y+floor(vsp)
y=floor(y)
	

	
if(sprite_index==s_mettaur_open)
	{
	if(image_index>=image_number-image_speed)
		{
		sprite_index=s_mettaur_closed
		//grenade_toss_timer=150
		image_index=0
		}	
	
	if(image_index==4)
		{
		with(instance_create(x-image_xscale*5, bbox_bottom-10, o_joe_spreadgun_bullet))
			{
			hsp=lengthdir_x(bullet_speed+2, other.dir)
			vsp=lengthdir_y(bullet_speed+2, other.dir)
			}
		}
	}
	
if(instance_exists(target))
	{
	target.x=(bbox_left+bbox_right)/2
	target.y=(bbox_top+bbox_bottom)/2
	}

//scr_boss_death(sprite_index, 1)

if(sprite_index==s_mettaur_open)
	{
	hp=scr_boss_get_damage(hp)
	}
else
	{
	var _list = ds_list_create()
	var _num = instance_place_list(x, y, o_parent_bullet, _list, false)
	if (_num > 0)
	    {
	    for (var i = 0; i < _num; i++)
	        {
			if(_list[|i].object_index!=o_energygun_explosion)
				{
				//show_message(object_get_name(_list[|i].object_index))
		        instance_destroy(_list[| i], true)
				}
	        }
	    }
	ds_list_destroy(_list)
	}

if(hp<=0)
	{
	scr_boss_death(sprite_index, 2, my_next_room)
	}