function scr_powerup_get(argument0, argument1) {
	
	if(weapon_slot[active_slot]!=weapons.machinegun)
		{
		with(instance_create(x, bbox_top-20, o_weapon_powerup))
			{
			hsp=1*-other.image_xscale
			vsp=-2
			unpick_timer=120
			weapon=other.weapon_slot[other.active_slot]
			switch(weapon)
				{
				case weapons.machinegun:
					{
					sprite_index=s_bonus_m
					}
				break
				case weapons.spreadgun:
					{
					sprite_index=s_bonus_s
					}
				break
				case weapons.energygun:
					{
					sprite_index=s_bonus_e
					}
				break
				case weapons.hominggun:
					{
					sprite_index=s_bonus_h
					}
				break
				case weapons.lasergun:
					{
					sprite_index=s_bonus_l
					}
				break
				}
			}
		}
	
	weapon_slot[active_slot]=argument0
	instance_destroy(argument1)
}
