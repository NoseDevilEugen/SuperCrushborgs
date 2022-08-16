/// @description Insert description here
// You can write your code in this editor

if(x>o_camera.screen_left-16 
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16
&& y<o_camera.screen_bottom+16)
    {
	part_emitter_region(p_blood_sys, p_blood_emit, x-4, x+12, y-4, y-4, ps_shape_rectangle, 1)
	part_emitter_burst(p_blood_sys, p_blood_emit, p_blood, 1)	
	if(timer>0)
		{
		timer=timer-1
		}
	else
		{
		timer=720
		}
	
	switch(timer)
		{
		case 0:
			{
			with(instance_create_layer(x+8, y, "instances_lava", o_big_fireball))
				{
				hsp=0
				vsp=-8
				}
			}
		break
		case 180:
			{
			with(instance_create_layer(x+8, y, "instances_lava", o_big_fireball))
				{
				hsp=0
				vsp=-7
				}
			}
		break
		case 360:
			{
			with(instance_create_layer(x+8, y, "instances_lava", o_big_fireball))
				{
				hsp=0
				vsp=-6
				}
			}
		break
		case 540:
			{
			with(instance_create_layer(x+8, y, "instances_lava", o_big_fireball))
				{
				hsp=0
				vsp=-9
				}
			}
		}
	
	}