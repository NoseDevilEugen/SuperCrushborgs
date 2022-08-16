/// @description Insert description here
// You can write your code in this editor
//паверап - это один объект. хранит в себе значение подбираемого вепона

hsp=2
vsp=0

counter=0

//grav=0.5

//рандомный вепон при создании
//в creation code этого объекта напиши желаемое оружие, например, weapon=weapons.spreadgun
weapon=irandom_range(0,4)


sprite_index=s_weapon_container_fly
//спрайт для отображения

/*
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
*/