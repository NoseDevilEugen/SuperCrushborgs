/// @description Insert description here
// You can write your code in this editor


//sprite_index=s_machinegun_bullet_idle


//смещает полет пуль относительно игрока задля ровной линии огня

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

if(instance_place(x, y, o_blackhole_field)
&& point_distance(x, y, instance_place(x, y, o_blackhole_field).x, instance_place(x, y, o_blackhole_field).y)<=56)
	{
	
	var _aim=instance_place(x, y, o_blackhole_field).my_parent
	var _dir=point_direction(x, y, _aim.x, _aim.y)
	if(bullet_catched==false)
		{
		bullet_catched=true
		angle=point_direction( _aim.x, _aim.y, x, y)
		orbit=point_distance(x, y, _aim.x, _aim.y)-12
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

	}
else
	{
	if(bullet_catched==true)
		{
		hsp=lengthdir_x(bullet_speed, angle)
		vsp=lengthdir_y(bullet_speed, angle)	
		//instance_destroy(id)
		}
	if(hsp!=0 && parent.hsp!=0 && add_hsp!=0 && sign(hsp)==sign(parent.hsp))
		{
		add_hsp=floor(parent.hsp_final)
		}
	else
		{
		add_hsp=0
		}

	x=x+hsp+add_hsp


	if(vsp!=0 && parent.vsp!=0 && add_vsp!=0 && sign(vsp)==sign(parent.vsp))
		{
		add_vsp=floor(parent.vsp)
		add_vsp=clamp(add_vsp, -4, 4)
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
		while(place_meeting(x, y, o_floor))
			{
			x=x-sign(other.hsp+other.add_hsp)
			y=y-sign(other.vsp+other.add_vsp)
			}
		x=floor(x)
		y=floor(y)	
			
		instance_destroy()
		
		with(instance_create(x, y, o_bullet_destroyed))
			{

			parent=other.parent
			mask_index=other.sprite_index
			//sprite_index=other.sprite_index
			firepower=other.firepower
			image_index=0
			x=floor(x)
			y=floor(y)
			}
		
		}
	}

if(onscreen==true)
	{
	scr_destroy_projectile()
	}
