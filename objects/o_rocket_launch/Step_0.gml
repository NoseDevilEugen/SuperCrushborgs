/// @description Insert description here
// You can write your code in this editor
x=x+round(hsp)

y=y+round(vsp)

if(y<=o_camera.screen_top-100)
	{
	instance_destroy(id)
	with(instance_create(x, y, o_rocket_fall))
		{
		sprite_index=s_spider_grenade
		hsp=other.hsp*-1
		vsp=0
		}
	}
if(hsp==1)
	{
	hsp=0
	}
else if(hsp==0)
	{
	hsp=1
	}