/// @description Insert description here
// You can write your code in this editor
if(onscreen==false)
	{
	if(x>o_camera.screen_left
	&& x<o_camera.screen_right
	&& y>o_camera.screen_top
	&& y<o_camera.screen_bottom)
		{
		onscreen=true
		}
	}

//sprite_index=s_machinegun_bullet_idle
	
var auto_aim=instance_nearest(x, y, o_homing_aim)
var closest_enemy=noone

if(instance_place(x, y, o_blackhole_field)
&& point_distance(x, y, instance_place(x, y, o_blackhole_field).x, instance_place(x, y, o_blackhole_field).y)<=56)
	{
	
	var _aim=instance_place(x, y, o_blackhole_field).my_parent
	var _dir=point_direction(x, y, _aim.x, _aim.y)
	if(bullet_catched==false)
		{
		bullet_catched=true
		angle=point_direction( _aim.x, _aim.y, x, y)
		orbit=point_distance(x, y, _aim.x, _aim.y)
		closing_speed=1
		}
	closing_speed=closing_speed+0.2
	angle=angle+(closing_speed) mod 360
	orbit=orbit-0.5
	hsp=((lengthdir_x(orbit, angle)+_aim.x)-xprevious)
	vsp=((lengthdir_y(orbit, angle)+_aim.y)-yprevious)
	
	//hsp=lengthdir_x(1, _dir)
	//vsp=lengthdir_y(1, _dir)
	x=x+hsp
	y=y+vsp
	image_angle=_dir
	}
else
	{
	if(bullet_catched==true)
		{
		hsp=lengthdir_x(bullet_speed, angle)
		vsp=lengthdir_y(bullet_speed, angle)
		image_angle=angle
		//instance_destroy(id)
		}
		
	if(auto_aim!=noone)
		{
		if(auto_aim.x>o_camera.screen_left-16 
		&& auto_aim.x<o_camera.screen_right+16
		&& auto_aim.y>o_camera.screen_top-16
		&& auto_aim.y<o_camera.screen_bottom+16
		&& !collision_line(x, y, auto_aim.x, auto_aim.y, o_floor, false, false))
		    {
		    closest_enemy=auto_aim
		    }
		else
			{
			closest_enemy=noone
			}
		}

	
	if((closest_enemy==noone))
		{
		//смещает полет пуль относительно игрока задля ровной линии огня
		if(hsp!=0 && parent.hsp!=0 && add_hsp!=0 && sign(hsp)==sign(parent.hsp))
			{
			add_hsp=floor(parent.hsp_final)
			}
		else
			{
			add_hsp=0
			}

		x=x+hsp+add_hsp


		if(vsp!=0 && parent.vsp!=0 && add_vsp!=0 &&sign(vsp)==sign(parent.vsp))
			{
			add_vsp=floor(parent.vsp)
			}
		else
			{
			add_vsp=0
			}

		y=y+vsp+add_vsp
		}

	if(place_meeting(x, y, o_floor))
		{
		if(instance_place(x, y, o_floor).object_index!=o_destructible
		&& instance_place(x, y, o_floor).object_index!=o_block_hazard
		&& instance_place(x, y, o_floor).object_index!=o_block_hazard_ver)
			{
			x=round(x)
			y=round(y)	
			while(place_meeting(x, y, o_floor))
				{
				x=x-sign(hsp+add_hsp)
				y=y-sign(vsp+add_vsp)
				}
		
			//hsp=0
			//vsp=0
			instance_destroy()
			}
		
		with(instance_create(x, y, o_bullet_destroyed))
			{
			hsp=sign(other.hsp+other.add_hsp)
			vsp=sign(other.vsp+other.add_vsp)	
			//x=round(other.x)
			//y=round(other.y)
			parent=other.parent
			mask_index=other.sprite_index
			//sprite_index=other.sprite_index
			firepower=other.firepower
			image_index=0
			}
		}
	
	timer=timer+1	
	
	
	
	if(timer>=5)	
		{
		timer=0		
		if(closest_enemy!=noone)
			{
			var enemy_direction=point_direction(x, y, closest_enemy.x, closest_enemy.y)
			if(point_direction(x, x+hsp, y, y+vsp)!=point_direction(x, y, closest_enemy.x, closest_enemy.y))
				{
				hsp=lengthdir_x(bullet_speed, enemy_direction)
				vsp=lengthdir_y(bullet_speed, enemy_direction)
				image_angle=enemy_direction
				}
			}
		}
	if(closest_enemy!=noone)
		{
		x=x+hsp
		y=y+vsp
		}
	}

if(onscreen==true)
	{
	scr_destroy_projectile()
	}
