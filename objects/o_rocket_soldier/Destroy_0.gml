if(instance_exists(rocket))
		{
		if(rocket.thrown==false)
			{
			rocket.hsp=5*image_xscale
			rocket.vsp=0
			rocket.thrown=true
			}
		}
scr_add_score_to_one()


