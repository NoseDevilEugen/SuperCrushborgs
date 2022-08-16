function scr_joe_shoot(argument0, argument1) {
	switch(argument0)
		{
		case weapons.machinegun:
			{
			with(instance_create(x+25*image_xscale, y-5, o_joe_spreadgun_bullet))
				{
				hsp=lengthdir_x(bullet_speed-2, argument1)
				vsp=lengthdir_y(bullet_speed-2, argument1)
				}
			break
			}
		case weapons.spreadgun:
			{
			with(instance_create(x+25*image_xscale, y-5, o_joe_spreadgun_bullet))
				{
				hsp=lengthdir_x(bullet_speed, argument1)
				vsp=lengthdir_y(bullet_speed, argument1)
				}
			with(instance_create(x+25*image_xscale, y-5, o_joe_spreadgun_bullet))
				{
				hsp=lengthdir_x(bullet_speed, argument1-5)
				vsp=lengthdir_y(bullet_speed, argument1-5)
				}
			with(instance_create(x+25*image_xscale, y-5, o_joe_spreadgun_bullet))
				{
				hsp=lengthdir_x(bullet_speed, argument1+5)
				vsp=lengthdir_y(bullet_speed, argument1+5)
				}
			break
			}
		case weapons.hominggun:
			{
			with(instance_create(x+25*image_xscale, y-5, o_joe_boss_ricoshet))
				{
				hsp=lengthdir_x(bullet_speed, argument1)
				vsp=lengthdir_y(bullet_speed, argument1)
				}
			break
			}
		case weapons.energygun:
			{
			with(instance_create(x+25*image_xscale, y-5, o_joe_energygun_bullet))
				{
				hsp=lengthdir_x(bullet_speed, argument1)
				vsp=lengthdir_y(bullet_speed, argument1)
				}
			break
			}
		case weapons.lasergun:
			with(instance_create(x+25*image_xscale, y-5, o_joe_start_laser))
				{
				bullet_dir=argument1
				}
			break		
		default: break
		}
	weapon=irandom_range(0,4)
}
