/// @description Insert description here
// You can write your code in this editor


	with(instance_create_layer(x, y, "Bullets", o_energygun_explosion_alt))
		{
		basic_vsp=other.basic_vsp
		parent=other.parent
		my_string=1
		hsp=lengthdir_x(bullet_speed, 180)
		vsp=lengthdir_y(bullet_speed, 180)
		}
	with(instance_create_layer(x, y, "Bullets", o_energygun_explosion_alt))
		{
		basic_vsp=other.basic_vsp
		parent=other.parent
		my_string=2
		hsp=lengthdir_x(bullet_speed, 0)
		vsp=lengthdir_y(bullet_speed, 0)
		}

	with(instance_create_layer(x, y-4, "Bullets", o_energygun_explosion_alt))
		{
		basic_vsp=other.basic_vsp
		parent=other.parent
		my_string=3
		hsp=lengthdir_x(bullet_speed, 90)
		vsp=lengthdir_y(bullet_speed, 90)
		}
	with(instance_create_layer(x, y+4, "Bullets", o_energygun_explosion_alt))
		{
		basic_vsp=other.basic_vsp
		parent=other.parent
		my_string=4
		hsp=lengthdir_x(bullet_speed, 270)
		vsp=lengthdir_y(bullet_speed, 270)
		}