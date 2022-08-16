/// @description Insert description here
// You can write your code in this editor

var i 

for(i=0; i<4; i++)
	{
	with(instance_create_layer(x, y, "Bullets", o_joe_energygun_explosion))
		{
		sprite_index=other.sprite_index
		hsp=lengthdir_x(4, other.explosion_dir[i])
		vsp=lengthdir_y(4, other.explosion_dir[i])
		}
	}