/// @description Insert description here
// You can write your code in this editor

if(my_rope==noone)
	{
	my_rope=instance_place(x, y, o_rope)
	}


if((x-(hsp*2)<my_rope.bbox_left && hsp<0)
|| (x+(hsp*2)>my_rope.bbox_right && hsp>0))
	{
	hsp=hsp*-1
	}

x=x+hsp
x=round(x)

for(var i=0; i<5; i++)	
	{
	if(instance_exists(flame_array[i]))
		{
		with(flame_array[i])
			{
			angle=angle-(1*other.image_xscale) mod 360
			hsp=((lengthdir_x(orbit, angle)+other.x)-xprevious)
			vsp=((lengthdir_y(orbit, angle)+other.y)-yprevious)
			x=x+hsp
			y=y+vsp
			}
		}
	}


	
