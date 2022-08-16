/// @description Insert description here
// You can write your code in this editor

counter=(counter+2) mod 360

if(vsp<1)
	{
	vsp=vsp+grav
	}

	
if(hsp!=0 && x_start==-1)
	{
	hsp=hsp+(fric*-sign(hsp))
	}

if(hsp==0 && x_start==-1)
	{
	counter=0
	x_start=x
	}
	
if(x_start!=-1)
	{
	if(sub==1)
		{
		hsp = (x_start + dsin(counter)*40)-xprevious
		}
	else
		{
		hsp = (x_start - dsin(counter)*40)-xprevious
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

if(y>o_camera.camera_border_bottom)
	{
	instance_destroy(id)
	}