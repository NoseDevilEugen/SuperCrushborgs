function init_camera() {
	//camera X-axis
	
	
	boss_gate=instance_place(x, y, o_boss_gate)
	if(boss_gate!=noone)
		{
		if(boss_gate.player_touch==false)
			{
			boss_gate.player_touch=true
			boss_gate.push_hsp=x-xprevious
			boss_gate.push_vsp=y-yprevious
			}
		if(boss_gate.player_touch==true)
			{
			//show_message("Двигаю")
			if(hsp==0 || sign(hsp)!=sign(boss_gate.push_hsp))
				{
				if(boss_gate.object_index==o_boss_gate)
					{
					if(hsp==0)
						{
						x=x+boss_gate.push_hsp
						}
					if(sign(hsp)!=sign(boss_gate.push_hsp) && hsp!=0)
						{
						x=x+(boss_gate.push_hsp*2)
						}
					}
				else if(boss_gate.object_index==o_boss_gate_vertical)
					{
					if(vsp<=0)
						{
						y=y+boss_gate.push_vsp
						}
					}
				}
			}
		}
	

				
		    

	if(instance_exists(o_rotating_tower))
		{
		o_rotating_tower.x=o_camera.screen_left + (o_camera.screen_width/2)
		}



}
