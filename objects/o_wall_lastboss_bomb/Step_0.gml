/// @description Insert description here
// You can write your code in this editor

counter=(counter+1) mod 360

if(vsp<1)
	{
	vsp=vsp+grav
	}
	
if(hsp!=0 && x_start==-1)
	{
	hsp=hsp+fric
	}

if(hsp==0 && x_start==-1)
	{
	sprite_index=s_bomb_parachute
	counter=0
	x_start=x
	}
	
if(x_start!=-1)
	{
	if(sub==1)
		{
		hsp = (x_start + dsin(counter)*20)-xprevious
		}
	else
		{
		hsp = (x_start - dsin(counter)*20)-xprevious
		}
	}

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	instance_destroy(id)
	}

x=x+floor(hsp)
x=floor(x)

y=y+floor(vsp)
y=floor(y)

if(y>o_camera.screen_bottom+64)
	{
	instance_destroy(id, false)
	}