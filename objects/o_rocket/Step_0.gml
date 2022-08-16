/// @description Insert description here
// You can write your code in this editor
if(thrown==true)
	{
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		instance_destroy(id)
		}	
	x=x+hsp
	x=floor(x)

	if(place_meeting(x, y+vsp, o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		//o_player.bullet_recharge=20
		instance_destroy(id)
		}
	vsp=vsp+grav
	if(vsp>1)
		{
		vsp=0
		}
	y=y+vsp
	y=floor(y)
	scr_destroy_projectile()
	}