/// @description Insert description here
// You can write your code in this editor


angle=angle+(0.4*parent.spray_dir)
if(angle >= 360) 
	{
	angle -= 360
	}

	
if(timer_shot1>0)
	{
	timer_shot1=timer_shot1-1
	}
	
if(timer_shot1==0)
	{
	if(o_boss_pendulum.spray_timer<540 && o_boss_pendulum.spray_timer>60)
	//player_direction=point_direction(x, y, o_player.x+(o_player.hsp*2), o_player.y+(o_player.vsp*2))
	with(instance_create(x, y, o_spider_bullet))
		{
		hsp=lengthdir_x(bullet_speed+2, other.angle)
		vsp=lengthdir_y(bullet_speed+2, other.angle)
		}
	timer_shot1=5
	}	

	
hsp=floor((lengthdir_x(orbit, angle)+parent.x)-xprevious)
vsp=floor((lengthdir_y(orbit, angle)+parent.y)-yprevious)

x=x+hsp
y=y+vsp

x=floor(x)
y=floor(y)