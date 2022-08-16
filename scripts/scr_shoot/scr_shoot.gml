function scr_shoot() {

	for(var i=0; i<5; i++)
		{
		if(bullet_recharge[i]>0)
			{
			bullet_recharge[i]=bullet_recharge[i]-1
			}
		}
	if(key_combo 
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.teleport_end
	&& primary_action!=primary_actions.cutscene)
		{
		switch(weapon_slot[active_slot])
			{
			case weapons.machinegun:
			if(bullet_recharge[weapons.machinegun]<=0)
				{
				audio_play_sound(o_controller.sound_array[6], 10, false)
				bullet_recharge[weapons.machinegun]=7
				//instance_create(x+image_xscale*3, y, o_machinegun_bullet)
				scr_set_starting_point_machinegun(primary_action, o_machinegun_bullet)
				}
			break
		
			case weapons.spreadgun:
			if(bullet_recharge[weapons.spreadgun]==0)
				{
				audio_play_sound(o_controller.sound_array[7], 10, false)
				bullet_recharge[weapons.spreadgun]=18
				//instance_create(x+image_xscale*3, y, o_machinegun_bullet)
				scr_set_starting_point_spreadgun(primary_action, o_spreadgun_bullet)
				}
			break
		
			case weapons.energygun:
			if(bullet_recharge[weapons.energygun]<=0)
				{
				audio_play_sound(o_controller.sound_array[8], 10, false)
				bullet_recharge[weapons.energygun]=16
				//instance_create(x+image_xscale*3, y, o_machinegun_bullet)
				scr_set_starting_point_energygun(primary_action, o_energygun_bullet)
				}
			break
		
			case weapons.hominggun:
			if(bullet_recharge[weapons.hominggun]<=0)
				{
				bullet_recharge[weapons.hominggun]=10
				//instance_create(x+image_xscale*3, y, o_machinegun_bullet)
				scr_set_starting_point_hominggun(primary_action, o_hominggun_bullet)
				}
			break
		
			case weapons.lasergun:
			if(bullet_recharge[weapons.lasergun]<=0)
				{
				audio_play_sound(o_controller.sound_array[9], 10, false)
				bullet_recharge[weapons.lasergun]=30
				//instance_create(x+image_xscale*3, y, o_machinegun_bullet)
				scr_set_starting_point_lasergun(primary_action, o_start_laser)
				}
			break
		
			}
		}


}
