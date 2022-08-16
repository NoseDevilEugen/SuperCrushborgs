/// @description Insert description here
// You can write your code in this editor

var i 

with(instance_create_layer(x, y, "Bullets", o_energygun_explosion_area))
	{
	parent=other.parent
	}

for(i=0; i<8; i++)
	{
	with(instance_create_layer(x, y, "Bullets", o_energygun_explosion))
		{
		firepower=0
		parent=other.parent
		hsp=lengthdir_x(6, other.explosion_dir[i])
		vsp=lengthdir_y(6, other.explosion_dir[i])
		}
	}