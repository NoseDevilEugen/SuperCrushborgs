if(instance_exists(rocket))
		{
		if(rocket.thrown==false)
			{
			with(rocket)
				{
				while(place_meeting(x, y, o_floor))
					{
					y=y+1
					}
				}
			rocket.hsp=2*image_xscale
			rocket.vsp=0
			rocket.thrown=true
			}
		}
scr_add_score_to_one()